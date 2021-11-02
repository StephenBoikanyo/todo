import 'package:flutter/material.dart';
import 'components.dart';
import 'package:todo/models/models.dart';
import 'package:todo/screens/screens.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          //final task = taskData.tasks[index]; | Can use this to avoid redundancy
          return TaskTile(
            taskTitle: taskData.tasks[index]
                .name, //Provider.of<TaskData>(context).tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longpressCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
//TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
