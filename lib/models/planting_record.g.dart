// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planting_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlantingRecordAdapter extends TypeAdapter<PlantingRecord> {
  @override
  final int typeId = 0;

  @override
  PlantingRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlantingRecord(
      name: fields[0] as String,
      plantingDate: fields[1] as DateTime,
      harvestDate: fields[2] as DateTime?,
      activities: (fields[3] as List).cast<String>(),
      investment: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PlantingRecord obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.plantingDate)
      ..writeByte(2)
      ..write(obj.harvestDate)
      ..writeByte(3)
      ..write(obj.activities)
      ..writeByte(4)
      ..write(obj.investment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlantingRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
