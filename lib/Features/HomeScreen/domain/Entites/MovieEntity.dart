class MovieEntity {
  final int id;
  final String title;
  final String image;
  final double voteAverage;
  final String description;
  final List<int> genreids;
  final String date;

  MovieEntity(
    this.id,
    this.title,
    this.image,
    this.voteAverage,
    this.description,
    this.genreids,
    this.date,
  );
}
