// This has a TasksList class which constructs interface of all the tasks by viewing from task_data/

import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            // return TextButton(
            //   onPressed: () {},
            //   onLongPress: () {
            //     taskData.deleteTask(task);
            //   },
            child:
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
              // ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
