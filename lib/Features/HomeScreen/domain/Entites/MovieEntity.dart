
import 'package:hive_flutter/adapters.dart';
part 'MovieEntity.g.dart';
@HiveType(typeId: 0)
class MovieEntity {
  @HiveField(0)
  final int movieId;
  @HiveField(1)
  final String movieTitle;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final double voteAver;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final List<int> genreids;
  @HiveField(6)
  final String date;

  MovieEntity({
    required this.movieId,
    required this.movieTitle,
    required this.image,
    required this.voteAver,
    required this.description,
    required this.genreids,
    required this.date,
  });
}
