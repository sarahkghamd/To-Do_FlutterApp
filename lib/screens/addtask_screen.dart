import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            //newText is the task that the user will enter
            newTask = newText;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTask!);
            Navigator.pop(context);
          },
          child: Text("Add", style: TextStyle(color: Colors.white)),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 136, 80, 146),
          ),
        )
      ]),
    );
  }
}
