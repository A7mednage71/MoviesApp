import 'package:dartz/dartz.dart';
import 'package:movies/Features/HomeScreen/domain/Entites/MovieEntity.dart';
import 'package:movies/core/Errors/Failure.dart';
import '../../domain/Repos/HomeRepo.dart';

class HomeMovieRepoImp extends HomeMoviesRepo {
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchNowPlaying() {
    // TODO: implement fetchNowPlaying
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchTopRatedMovies() {
    // TODO: implement fetchTopRatedMovies
    throw UnimplementedError();
  }
}
