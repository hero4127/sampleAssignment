import 'package:flutter/cupertino.dart';
import 'package:sampleassignment/ApiManager.dart';
import 'package:sampleassignment/Model/Movies.dart';

class StateModel extends ChangeNotifier {
  int _navigationIndex = 0;

  Movies movies = Movies(search: [], totalResults: "0", response: "");

  int get navigationIndex => _navigationIndex;

  Movies get getMovies => movies;

  void updateNavigationIndex(int index) {
    _navigationIndex = index;
    notifyListeners();
  }

  void updateMovies(String s) async {
    movies = await ApiManager().getMovies(s);
    notifyListeners();
  }
}
