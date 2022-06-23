import 'package:sampleassignment/Model/Movies.dart';

import 'package:http/http.dart';
import 'package:sampleassignment/Screens/Constants.dart';

class ApiManager {
  Future<Movies> getMovies(String s) async {
    Movies movies;
    Response res = await get(
        Uri.parse(Constants.baseUrl + "?apikey=${Constants.apiKey}&s=$s"));
    print(res.body);
    if (res.statusCode == 200) {
      movies = moviesFromJson(res.body);
    } else {
      movies = Movies(response: "0", search: [], totalResults: "0");
    }
    return movies;
  }
}
