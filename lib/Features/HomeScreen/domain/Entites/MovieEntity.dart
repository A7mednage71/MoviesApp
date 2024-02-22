class MovieEntity {
  final int movieId;
  final String movieTitle;
  final String image;
  final double voteAver;
  final String description;
  final List<int> genreids;
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
