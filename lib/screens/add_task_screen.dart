import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController getTaskController = TextEditingController();
  final Function(String) addTaskCallback;

  AddTaskScreen({super.key, required this.addTaskCallback});

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
              addTaskCallback(getTaskController.text);
              Navigator.pop(context);
            },
            child: Text('Add New Task'),
          ),
        ],
      ),
    );
  }
}
