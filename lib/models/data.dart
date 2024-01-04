import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void updateCheck(int index) {
    tasks[index].toggleCheck();
    notifyListeners();
  }

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
