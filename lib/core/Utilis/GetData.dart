
import '../../Features/HomeScreen/data/Models/MovieModel.dart';
import '../../Features/HomeScreen/domain/Entites/MovieEntity.dart';

List<MovieEntity> GetData(Map<String, dynamic> data) {
  List<MovieEntity> movies = [];
  for (var movie in data["results"]) {
    movies.add(MovieModel.fromJson(movie));
  }
  return movies;
}