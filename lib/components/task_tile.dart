import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  const TaskTitle({
    super.key,
  });

  @override
  State<TaskTitle> createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  bool isChecked = false;

  void toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'This is task 1',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckbox: toggleCheckbox,
        ),
      ),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckbox;

  TaskCheckBox({
    required this.checkBoxState,
    required this.toggleCheckbox,
  });

  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.checkBoxState,
      onChanged: widget.toggleCheckbox,
    );
  }
}
