// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MUserAdapter extends TypeAdapter<MUser> {
  @override
  final int typeId = 0;

  @override
  MUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MUser(
      uid: fields[0] as String?,
      fullName: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as String?,
      token: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MUser obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
