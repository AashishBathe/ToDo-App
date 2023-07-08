// This is used to add a new task, and is made by ModalBottomSheet. It includes description of task
// and the Add button.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add New Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontSize: 28),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            style: TextStyle(fontSize: 20, color: Colors.blue),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
