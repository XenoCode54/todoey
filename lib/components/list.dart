import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Eggs',
    ),
    Task(
      name: 'Milk',
    ),
    Task(
      name: 'Drugs',
    ),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get totalTaskNumber {
    return _tasks.length;
  }

  void addTask(newTaskName) {
    Task task = Task(name: newTaskName);
    _tasks.add(task);
    notifyListeners();
  }

  void toggleCheck(index) {
    _tasks[index].toggleChecked();
    notifyListeners();
  }

  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
