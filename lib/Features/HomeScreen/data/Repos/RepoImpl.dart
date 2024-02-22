import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies/Features/HomeScreen/data/DataSources/fetch_remote_data_source.dart';
import 'package:movies/Features/HomeScreen/domain/Entites/MovieEntity.dart';
import 'package:movies/core/Errors/Failure.dart';
import '../../domain/Repos/HomeRepo.dart';
import '../DataSources/fetch_Local_data_Source.dart';

class HomeMovieRepoImp extends HomeMoviesRepo {
  final RemoteDataSourceImp remoteDataSourceImp;
  final LocalDataSourceImp localDataSourceImp;

  HomeMovieRepoImp(this.remoteDataSourceImp, this.localDataSourceImp);
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchNowPlaying() async {
    try {
      List<MovieEntity> mv;
      mv = localDataSourceImp.fetchNowPlaying();
      if (mv.isEmpty) {
        mv = await remoteDataSourceImp.fetchNowPlaying();
        return right(mv);
      }
      return right(mv);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchPopularMovies() async {
    try {
      List<MovieEntity> movies;
      movies = localDataSourceImp.fetchPopularMovies();
      if (movies.isEmpty) {
        movies = await remoteDataSourceImp.fetchPopularMovies();
        return right(movies);
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchTopRatedMovies() async {
    try {
      List<MovieEntity> movies;
      movies = localDataSourceImp.fetchTopRatedMovies();
      if (movies.isEmpty) {
        movies = await remoteDataSourceImp.fetchTopRatedMovies();
        return right(movies);
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
