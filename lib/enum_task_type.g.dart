// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_task_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class tasktypeenumAdapter extends TypeAdapter<task_type_enum> {
  @override
  final int typeId = 4;

  @override
  task_type_enum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return task_type_enum.meditation;
      case 1:
        return task_type_enum.frends;
      case 2:
        return task_type_enum.workout;
      case 3:
        return task_type_enum.work_meeting;
      default:
        return task_type_enum.meditation;
    }
  }

  @override
  void write(BinaryWriter writer, task_type_enum obj) {
    switch (obj) {
      case task_type_enum.meditation:
        writer.writeByte(0);
        break;
      case task_type_enum.frends:
        writer.writeByte(1);
        break;
      case task_type_enum.workout:
        writer.writeByte(2);
        break;
      case task_type_enum.work_meeting:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is tasktypeenumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
