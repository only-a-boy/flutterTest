import 'dart:async';
import 'dart:convert';
import 'package:hello_world/widget/card/movieCard.dart';
import 'package:hello_world/widget/card/movieDetail.dart';
import 'package:http/http.dart' as http;

class ParsedResponse<T> {
  ParsedResponse(this.statusCode, this.body);

  final int statusCode;
  final T body;

  bool isOk() {
    return statusCode >= 200 && statusCode < 300;
  }
}

final int NO_INTERNET = 404;

class Repository {

  static Future<ParsedResponse<List<Movie>>> getMovies(String input) async {
    http.Response response = await http.get(
        "http://api.douban.com/v2/movie/top250");
    print("response:" + response.body.toString());

    if (response == null) {
      return new ParsedResponse(NO_INTERNET, []);
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return new ParsedResponse(response.statusCode, []);
    }
    List<dynamic> list = json.decode(response.body)['subjects'];

    Map<String, Movie> networkMovies = {};

    for (dynamic jsonMovie in list) {
      Movie movie = Movie.movieResponse(jsonMovie);
      networkMovies[movie.id] = movie;
    }

    return new ParsedResponse(
        response.statusCode, []..addAll(networkMovies.values));
  }

  static Future<ParsedResponse<MovieDetail>> getMovieDetails(String id) async{
    http.Response response = await new http.Client().get(
        "https://api.douban.com/v2/movie/subject/"+id);

    if (response == null) {
      return new ParsedResponse(NO_INTERNET, null);
    }
    if (response.statusCode < 200 || response.statusCode >= 300) {
      return new ParsedResponse(response.statusCode, null);
    }
    dynamic details = json.decode(response.body);
    MovieDetail movieDetails=MovieDetail.formJson(details);
    return new ParsedResponse( response.statusCode,movieDetails);
  }

}