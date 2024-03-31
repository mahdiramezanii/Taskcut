// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_task_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskTypeEnumAdapter extends TypeAdapter<TaskTypeEnum> {
  @override
  final int typeId = 1;

  @override
  TaskTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaskTypeEnum.working;
      case 1:
        return TaskTypeEnum.meeting;
      case 2:
        return TaskTypeEnum.workingout;
      case 3:
        return TaskTypeEnum.meditation;
      case 4:
        return TaskTypeEnum.freinds;
      default:
        return TaskTypeEnum.working;
    }
  }

  @override
  void write(BinaryWriter writer, TaskTypeEnum obj) {
    switch (obj) {
      case TaskTypeEnum.working:
        writer.writeByte(0);
        break;
      case TaskTypeEnum.meeting:
        writer.writeByte(1);
        break;
      case TaskTypeEnum.workingout:
        writer.writeByte(2);
        break;
      case TaskTypeEnum.meditation:
        writer.writeByte(3);
        break;
      case TaskTypeEnum.freinds:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
