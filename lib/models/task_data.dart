import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:material_todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'Click checkbox to mark as done'),
    Task(name: 'Slide left to delete task'),
    Task(name: 'Click UNDO to restore deleted task'),
    Task(name: 'Click + to add new task'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
