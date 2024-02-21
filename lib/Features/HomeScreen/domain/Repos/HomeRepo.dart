import '../Entites/MovieEntity.dart';

abstract class HomeMoviesRepo {
  Future<List<MovieEntity>> fetchNowPlaying();
  Future<List<MovieEntity>> fetchPopularMovies();
  Future<List<MovieEntity>> fetchTopRatedMovies();
}
