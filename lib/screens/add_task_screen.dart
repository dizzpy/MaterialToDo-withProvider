import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter task name',
            ),
          ),
        ),

        SizedBox(height: 10),

        // Button
        FilledButton(
          onPressed: () => {},
          child: Text('Add New Task'),
        )
      ],
    ));
  }
}
