import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgetsFolder/tasks_tile.dart';

import '../Models/MyProvider.dart';

class TasksListView extends StatefulWidget {
  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  @override
  Widget build(BuildContext context) {
    List tasks = Provider.of<MyProvider>(context, listen: true).tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final Task =  Provider.of<MyProvider>(context, listen: false).tasks[index];
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          CheckboxCallBack: (value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
          onLongPressCallBack: () {
            Provider.of<MyProvider>(context, listen: false).deleteTask(Task);
          },
        );
      },
    );
  }
}
