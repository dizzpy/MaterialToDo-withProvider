import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:material_todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController getTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Add New Task Here',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          // Text box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              controller: getTaskController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter task name',
              ),
            ),
          ),
          SizedBox(height: 10),
          // Button
          FilledButton(
            onPressed: () {
              if (getTaskController.text != '') {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(getTaskController.text);
                Navigator.pop(context);
              }
            },
            child: Text('Add New Task'),
          ),
        ],
      ),
    );
  }
}
