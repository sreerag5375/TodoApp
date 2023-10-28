import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_app/models/todo_task_model.dart';

ValueNotifier<List<TodoTaskModel>> todoListNotifier = ValueNotifier([]);

class TodoDatabase extends ChangeNotifier {
  final Future<Box<TodoTaskModel>> todoDb;
  TodoDatabase() : todoDb = Hive.openBox<TodoTaskModel>('todo_db');

  // Add a task to the database
  Future<void> addTask(TodoTaskModel model) async {
    // add data to hive database
    final _key = await (await todoDb).add(model);
    model.key = _key;
    getAllTask();
  }

  // Get all tasks from the database
  Future<void> getAllTask() async {
    todoListNotifier.value.clear();
    todoListNotifier.value.addAll((await todoDb).values);
    todoListNotifier.notifyListeners();
  }

// Delete a task from the database
  Future<void> deleteTask(int key) async {
    (await todoDb).delete(key);
    // Update the list of tasks
    getAllTask();
  }

  // Clear all tasks from the database
  Future<void> clearAllDb() async {
    (await todoDb).clear();
    todoListNotifier.value.clear();
    todoListNotifier.notifyListeners();
  }
}
