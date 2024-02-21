import 'package:dartz/dartz.dart';
import 'package:movies/Features/HomeScreen/domain/Entites/MovieEntity.dart';
import 'package:movies/core/Errors/Failure.dart';
import '../../../../core/Utilis/UseCase.dart';
import '../Repos/HomeRepo.dart';

class FetchPopularMoviesUseCase extends UseCase<List<MovieEntity>, void> {
  final HomeMoviesRepo homeMoviesRepo;
  FetchPopularMoviesUseCase(this.homeMoviesRepo);
  @override
  Future<Either<Failure, List<MovieEntity>>> execute([void param]) async {
    return await homeMoviesRepo.fetchPopularMovies();
  }
}
