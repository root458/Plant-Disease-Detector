// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiseaseAdapter extends TypeAdapter<Disease> {
  @override
  final int typeId = 0;

  @override
  Disease read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Disease(
      name: fields[0] as String,
      imagePath: fields[3] as String,
    )
      ..possibleCauses = fields[1] as String
      ..possibleSolution = fields[2] as String
      ..dateTime = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Disease obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.possibleCauses)
      ..writeByte(2)
      ..write(obj.possibleSolution)
      ..writeByte(3)
      ..write(obj.imagePath)
      ..writeByte(4)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiseaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
