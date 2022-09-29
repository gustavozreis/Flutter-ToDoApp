import 'package:flutter/material.dart';
import 'dart:collection';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void add(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
}
