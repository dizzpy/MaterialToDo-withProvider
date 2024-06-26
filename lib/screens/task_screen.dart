import 'package:flutter/material.dart';
import 'package:material_todo/components/header_section.dart';
import 'package:material_todo/components/task_list.dart';
import 'package:material_todo/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              HeaderSection(),

              SizedBox(height: 10),

              // List View
              TaskList(),
            ],
          ),
        ),
      ),
    );
  }
}
