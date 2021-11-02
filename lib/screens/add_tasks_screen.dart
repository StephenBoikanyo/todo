import 'package:flutter/material.dart';
import 'package:todo/models/models.dart';
import 'screens.dart';

class AddTasksScreen extends StatelessWidget {
  String newTaskTitle = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 50,
            right: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                  minWidth: 400,
                  height: 50,
                  color: Colors.lightBlue,
                  onPressed: () {
                    final task = Task(name: newTaskTitle);
                    Provider.of<TaskData>(context, listen: false)
                        .AddTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    " Add",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
