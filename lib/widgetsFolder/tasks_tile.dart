// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function CheckboxCallBack;
  final Function onLongPressCallBack;
  const TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.CheckboxCallBack,
      required this.onLongPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => onLongPressCallBack(),
      title: isChecked
          ? Text(taskTitle,
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
              ))
          : Text(taskTitle),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          CheckboxCallBack(value);
        },
      ),
    );
  }
}
