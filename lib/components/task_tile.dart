import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;

  TaskTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.toggleCheckboxState,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: toggleCheckboxState,
        ),
      ),
    );
  }
}
