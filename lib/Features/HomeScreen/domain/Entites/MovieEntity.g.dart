// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MovieEntity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieEntityAdapter extends TypeAdapter<MovieEntity> {
  @override
  final int typeId = 0;

  @override
  MovieEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieEntity(
      movieId: fields[0] as int,
      movieTitle: fields[1] as String,
      image: fields[2] as String,
      voteAver: fields[3] as double,
      description: fields[4] as String,
      genreids: (fields[5] as List).cast<int>(),
      date: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.movieId)
      ..writeByte(1)
      ..write(obj.movieTitle)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.voteAver)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.genreids)
      ..writeByte(6)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
