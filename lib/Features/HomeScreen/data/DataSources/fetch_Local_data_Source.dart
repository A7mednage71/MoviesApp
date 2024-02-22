import 'package:hive/hive.dart';

import '../../../../Constents.dart';
import '../../domain/Entites/MovieEntity.dart';

abstract class LocalDataSource {
  List<MovieEntity> fetchNowPlaying();
  List<MovieEntity> fetchPopularMovies();
  List<MovieEntity> fetchTopRatedMovies();
}

class LocalDataSourceImp extends LocalDataSource {
  @override
  List<MovieEntity> fetchNowPlaying() {
    var moves = Hive.box<MovieEntity>(knowPlaying);
    return moves.values.toList();
  }

  @override
  List<MovieEntity> fetchPopularMovies() {
    var moves = Hive.box<MovieEntity>(kPopular);
    return moves.values.toList();
  }

  @override
  List<MovieEntity> fetchTopRatedMovies() {
    var moves = Hive.box<MovieEntity>(kTopRated);
    return moves.values.toList();
  }
}
