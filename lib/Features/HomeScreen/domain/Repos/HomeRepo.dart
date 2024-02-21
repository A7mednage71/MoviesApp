import 'package:dartz/dartz.dart';
import 'package:movies/core/Errors/Failure.dart';

import '../Entites/MovieEntity.dart';

abstract class HomeMoviesRepo {
  Future<Either<Failure,List<MovieEntity>>> fetchNowPlaying();
  Future<Either<Failure,List<MovieEntity>>> fetchPopularMovies();
  Future<Either<Failure,List<MovieEntity>>> fetchTopRatedMovies();
}
