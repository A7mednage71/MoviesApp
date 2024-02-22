import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Constents.dart';
import 'Features/HomeScreen/domain/Entites/MovieEntity.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(MovieEntityAdapter());

  await Hive.openBox(knowPlaying);
  await Hive.openBox(kPopular);
  await Hive.openBox(kTopRated);

  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
