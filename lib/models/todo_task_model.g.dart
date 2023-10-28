// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoTaskModelAdapter extends TypeAdapter<TodoTaskModel> {
  @override
  final int typeId = 0;

  @override
  TodoTaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoTaskModel(
      taskName: fields[1] as String,
      taskDescription: fields[2] as String,
      key: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TodoTaskModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.taskName)
      ..writeByte(2)
      ..write(obj.taskDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoTaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
