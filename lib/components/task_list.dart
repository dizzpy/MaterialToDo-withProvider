import 'package:flutter/material.dart';
import 'package:material_todo/components/task_tile.dart';
import 'package:material_todo/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> taskList = [
    Task(name: 'Task 01'),
    Task(name: 'Task 02'),
    Task(name: 'Task 03'),
    Task(name: 'Task 04'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return TaskTitle(
              isChecked: taskList[index].isDone,
              taskTitle: taskList[index].name,
              toggleCheckboxState: (bool? value) {
                setState(() {
                  taskList[index].isDone = value ?? false;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
