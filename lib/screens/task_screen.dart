import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Tasks',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '12 Tasks',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}
