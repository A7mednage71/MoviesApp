import 'package:hive/hive.dart';

import '../../Features/HomeScreen/domain/Entites/MovieEntity.dart';

void saveData(List<MovieEntity> movies, String box) {
  var mov = Hive.box<MovieEntity>(box);
  mov.addAll(movies);
}
