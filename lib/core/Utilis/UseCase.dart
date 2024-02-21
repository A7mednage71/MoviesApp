import 'package:dartz/dartz.dart';

import '../Errors/Failure.dart';

abstract class UseCase<Type,param>{
  Future<Either<Failure,Type>>execute([param param]);
}
