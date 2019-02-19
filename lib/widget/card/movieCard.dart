import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class MovieCard extends StatefulWidget {
  final Movie movie;
  final VoidCallback itemClick;

  MovieCard({this.movie, @required this.itemClick});

  @override
  State<StatefulWidget> createState() {
    return new MovieCardState();
  }
}

class MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: widget.itemClick,
      child: new Card(
        child: new Container(
          height: 200.0,
          child: new Padding(
            padding: new EdgeInsets.all(8.0),
            child: new Row(
              children: <Widget>[
                widget.movie.smallImg != null
                    ? new Hero(
                        child: new Image.network(
                          widget.movie.smallImg,
                          width: 140.0,
                        ),
                        tag: widget.movie.id,
                      )
                    : new Container(),
                new Expanded(
                    child: new Column(
                  children: <Widget>[
                    new Align(
                      child: new Padding(
                        child: new Text(
                          widget.movie.name +
                              " " +
                              widget.movie.originalTitle +
                              " (" +
                              widget.movie.year +
                              ")",
                          maxLines: 2,
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        padding: new EdgeInsets.all(8.0),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    new Align(
                      child: new Padding(
                        child: new Text(
                          "评分：" +
                              widget.movie.average.toString() +
                              "\n" +
                              widget.movie.directors +
                              "\n" +
                              widget.movie.casts +
                              "\n" +
                              widget.movie.genres,
                          maxLines: 4,
                          style: new TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                        padding: new EdgeInsets.all(8.0),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Movie {
  String id;
  String name;
  String year;
  String smallImg;
  String mediumImg;
  String largeImg;
  String originalTitle;
  //评分
  var average;
  //详情
  String alt;
  //分类
  String genres;
  //导演
  String directors;
  //演员
  String casts;

  Movie({
    @required this.id,
    @required this.name,
    @required this.year,
    @required this.smallImg,
    @required this.mediumImg,
    @required this.largeImg,
    @required this.originalTitle,
    @required this.alt,
    @required this.average,
    @required this.genres,
    @required this.directors,
    @required this.casts,
  });

  static Movie movieResponse(dynamic jsonMovie) {
    print(jsonMovie);
    return formJson(jsonMovie);
  }

  static Movie formJson(dynamic map) {
    List directors = map['directors'];
    List casts = map['casts'];
    List genres = map['genres'];

    var d = '';
    for (int i = 0; i < directors.length; i++) {
      if (i == 0) {
        d = d + directors[i]['name'];
      } else {
        d = d + '/' + directors[i]['name'];
      }
    }
    var c = '';
    for (int i = 0; i < casts.length; i++) {
      if (i == 0) {
        c = c + casts[i]['name'];
      } else {
        c = c + '/' + casts[i]['name'];
      }
    }

    var g = '';
    for (int i = 0; i < genres.length; i++) {
      if (i == 0) {
        g = g + genres[i];
      } else {
        g = g + '/' + genres[i];
      }
    }

    return new Movie(
      name: map["title"],
      id: map["id"],
      smallImg: map["images"]["small"],
      mediumImg: map["images"]["medium"],
      largeImg: map["images"]["large"],
      year: map["year"],
      alt: map["alt"],
      average: map["rating"]["average"],
      originalTitle: map["original_title"],
      genres: g,
      directors: d,
      casts: c,
    );
  }
}
