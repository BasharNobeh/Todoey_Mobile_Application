import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/Models/task.dart';

class MyProvider with ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
