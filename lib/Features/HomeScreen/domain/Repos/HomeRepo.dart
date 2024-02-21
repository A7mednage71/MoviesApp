import '../Entites/MovieEntity.dart';

abstract class HomeMoviesRepo {
  Future<MovieEntity> fetchNowPlaying();
  Future<MovieEntity> fetchPopularMovies();
  Future<MovieEntity> fetchTopRatedMovies();
}
