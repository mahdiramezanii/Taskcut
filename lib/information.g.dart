// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InformationAdapter extends TypeAdapter<Information> {
  @override
  final int typeId = 1;

  @override
  Information read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Information(
      name: fields[0] as String?,
      age: fields[1] as int?,
      addres: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Information obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.addres);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
