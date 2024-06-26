import 'package:flutter/material.dart';
import 'package:material_todo/components/header_section.dart';
import 'package:material_todo/components/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: HeaderSection(),
              ),

              // List View
              TaskList(),
            ],
          ),
        ),
      ),
    );
  }
}
