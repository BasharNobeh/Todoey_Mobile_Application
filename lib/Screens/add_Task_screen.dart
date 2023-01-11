// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  final Function addNewTask;
  const AddTaskScreen(
    this.addNewTask,
  );
  @override
  Widget build(BuildContext context) {
    String newTaskTitlte = "";
    return Container(
      color: const Color.fromARGB(255, 106, 104, 106),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w400,
                fontSize: 30),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitlte = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              addNewTask(newTaskTitlte);
            },
            child: const Text("Add"),
          )
        ]),
      ),
    );
  }
}
