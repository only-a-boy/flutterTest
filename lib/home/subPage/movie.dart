import 'package:flutter/material.dart';
import 'package:hello_world/http/http.dart';
import 'package:hello_world/widget/card/movieCard.dart';
import 'package:hello_world/home/subPage/movieData.dart';
import 'package:hello_world/home/subPage/movieDetail.dart';
import 'package:hello_world/route/index.dart';

class MoviePage extends StatefulWidget {
  @override
  createState() => new _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {

  _MoviePageState();

  List<Movie> _items = new List();

  bool _isLoading = false;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new TextField(
            //   decoration: new InputDecoration(
            //       hintText: "电影名称"
            //   ),
            //   onChanged: (text) => _textChanged(text),
            // ),
            _isLoading ?
            new Center(
                child: new CircularProgressIndicator()
            ) :
            new Expanded(child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                itemCount: _items.length,
                itemBuilder: (BuildContext context, int index) {
                  return new MovieCard(
                    movie: _items[index],
                    itemClick: () {
                      Navigator.of(context).push(
                        new MyRoute(
                          builder: (BuildContext context) =>
                            new MovieDetailsPage(_items[index]),
                          settings: new RouteSettings(
                            name: '/movie', isInitialRoute: false
                          ),
                        )  
                      );
                    },
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }

  void _clearList() {
      setState(() {
        _items.clear();
      });
    }

    @override
    void dispose() {
      super.dispose();
    }

    @override
    void initState() {
      super.initState();
      _textChanged('test');
    }

    void _textChanged(String text) {
      print(text);
      if (text.isEmpty) {
        setState(() {
          _isLoading = false;
        });
        return;
      }
      setState(() {
        _isLoading = true;
      });
      _clearList();

      HttpApi.get('http://api.douban.com/v2/movie/top250', '', {})
        .then((data) {
          if (data.isOk()) {
            List<dynamic> list = data.body['subjects'];

            Map<String, Movie> networkMovies = {};

            for (dynamic jsonMovie in list) {
              Movie movie = Movie.movieResponse(jsonMovie);
              networkMovies[movie.id] = movie;
            }

            setState(() {
              _isLoading = false;
              _items = []..addAll(networkMovies.values);
              print(_items);
            });
          }
        });
        
      // Repository.getMovies(text)
      //     .then((movie) {
      //       print(movie);
      //   setState(() {
      //     _isLoading = false;
      //     if (movie.isOk()) {
      //       _items = movie.body;
      //     } else {
      //       // scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(
      //       //     "Something went wrong, check your internet connection")));
      //     }
      //   });
      // });
    }
}


