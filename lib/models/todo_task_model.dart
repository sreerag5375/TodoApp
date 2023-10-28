import 'package:hive_flutter/adapters.dart';
part 'todo_task_model.g.dart';

@HiveType(typeId: 0)
class TodoTaskModel {
  @HiveField(0)
  int? key;
  @HiveField(1)  
  final String taskName;
  @HiveField(2)
  final String taskDescription;

  TodoTaskModel(
      {required this.taskName, required this.taskDescription, this.key});
}
