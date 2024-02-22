import 'package:dartz/dartz_unsafe.dart';
import 'package:movies/Features/HomeScreen/data/Models/MovieModel.dart';
import 'package:movies/Features/HomeScreen/domain/Entites/MovieEntity.dart';
import 'package:movies/core/Utilis/ApiService.dart';

import '../../../../core/Utilis/GetData.dart';

abstract class RemoteDataSource {
  Future<List<MovieEntity>> fetchNowPlaying();
  Future<List<MovieEntity>> fetchPopularMovies();
  Future<List<MovieEntity>> fetchTopRatedMovies();
}

class RemoteDataSourceImp extends RemoteDataSource {
  final ApiService apiService;

  RemoteDataSourceImp(this.apiService);
  @override
  Future<List<MovieEntity>> fetchNowPlaying() async {
    var data = await apiService.get(endPoint: "movie/now_playing");

    List<MovieEntity> movies = GetData(data);
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchPopularMovies() async {
    var data = await apiService.get(endPoint: "movie/popular");

    List<MovieEntity> movies = GetData(data);
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchTopRatedMovies() async {
    var data = await apiService.get(endPoint: "movie/top_rated");

    List<MovieEntity> movies = GetData(data);
    return movies;
  }
}
