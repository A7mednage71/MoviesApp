import '../../domain/Entites/MovieEntity.dart';

abstract class LocalDataSource {
  List<MovieEntity> fetchNowPlaying();
  List<MovieEntity> fetchPopularMovies();
  List<MovieEntity> fetchTopRatedMovies();
}

class LocalDataSourceImp extends LocalDataSource{
  @override
  List<MovieEntity> fetchNowPlaying() {
    // TODO: implement fetchNowPlaying
    throw UnimplementedError();
  }

  @override
  List<MovieEntity> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

  @override
  List<MovieEntity> fetchTopRatedMovies() {
    // TODO: implement fetchTopRatedMovies
    throw UnimplementedError();
  }

}