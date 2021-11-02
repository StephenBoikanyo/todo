import 'package:flutter/material.dart';
import 'package:todo/components/components.dart';
import 'package:todo/screens/add_tasks_screen.dart';
import 'package:todo/models/models.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              // isScrollControlled: true,
              builder: (context) => AddTasksScreen());
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add, color: Colors.white, size: 20),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 40,
                  ),
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("ToDo",
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        "${Provider.of<TaskData>(context).taskCount} Tasks ",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
