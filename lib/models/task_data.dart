import 'package:flutter/material.dart';
import 'package:todo/components/components.dart';
import 'models.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Hire Stephen as a Flutter Dev'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void AddTask(String taskTitle) {
    final task = Task(name: taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
