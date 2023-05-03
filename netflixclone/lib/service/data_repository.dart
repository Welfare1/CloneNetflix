import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/service/api_service.dart';

import 'api_key.dart';
import 'package:flutter/material.dart';
import 'movie.dart';

class DataRepository with ChangeNotifier {
  final APIService apiService = APIService();
  final List<Movie> _popularMovieList = [];
  int _popularMoviePageIndex = 1;

  List<Movie> get popularMovieList => _popularMovieList;

  // Future<Movie> getPopularMovies() async {
  //   try {
  //     List<Movie> movies =
  //         await apiService.getPopularMovies(pageNumber: _popularMoviePageIndex);
  //     _popularMovieList.addAll(movies);
  //     _popularMoviePageIndex++;
  //   } on Response catch (response) {
  //     print("ERROR: ${response.statusCode}");
  //     rethrow;
  //   }
  // }
}
