import 'package:http/http.dart';
import 'package:movies/models/movieModel.dart';

class YtsMovieController {
  String url = "https://yts.mx/api/v2/list_movies.json";
  //movie list
  //construction
  Future<List<Movie>> getMovieList() async {
    String jsonData = await getYtsMovieJson();
    YtsMovies ytsmovies = YtsMovies.fromRawJson(jsonData);
    return ytsmovies.data.movies;
  }

  Future<String> getYtsMovieJson() async {
    Response ytsresponse = await get(Uri.parse(url));
    return ytsresponse.body;
  }
}
