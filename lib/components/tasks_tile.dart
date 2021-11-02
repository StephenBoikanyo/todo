import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkboxCallback;
  final longpressCallback;
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpressCallback,
        title: Text(taskTitle,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(
          activeColor: Colors.lightBlue,
          value: isChecked,
          onChanged: checkboxCallback, // toggleCheckboxState(),
        ));
  }
}

// class TaskCheckbox extends StatelessWidget {
//   bool checkboxState;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox(this.checkboxState, this.toggleCheckboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlue,
//       value: checkboxState,
//       onChanged: toggleCheckboxState(),
//     );
//   }
// }
