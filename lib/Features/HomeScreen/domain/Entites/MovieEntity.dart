class MovieEntity {
  final num id;
  final String title;
  final String image;
  final double voteAverage;
  final String description;
  final List<int> genreids;
  final String date;

  MovieEntity({
    required this.id,
    required this.title,
    required this.image,
    required this.voteAverage,
    required this.description,
    required this.genreids,
    required this.date,
  });
}
