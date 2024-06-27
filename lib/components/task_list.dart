import 'package:flutter/material.dart';
import 'package:material_todo/components/task_tile.dart';
import 'package:material_todo/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

  TaskList({required this.taskList});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void deleteTask(int index) {
    setState(() {
      widget.taskList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(widget.taskList[index].name),
          onDismissed: (direction) {
            // Store the task name before deleting
            String deletedTaskName = widget.taskList[index].name;

            // Remove the item from the list

            deleteTask(index);

            // Show a snackbar with the option to undo the deletion
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$deletedTaskName deleted'),
                action: SnackBarAction(
                  label: 'UNDO',
                  onPressed: () {
                    setState(() {
                      widget.taskList
                          .insert(index, Task(name: deletedTaskName));
                    });
                  },
                ),
              ),
            );
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.delete, color: Colors.white),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.delete, color: Colors.white),
          ),
          child: TaskTile(
            isChecked: widget.taskList[index].isDone,
            taskTitle: widget.taskList[index].name,
            toggleCheckboxState: (bool? value) {
              setState(() {
                widget.taskList[index].isDone = value ?? false;
              });
            },
          ),
        );
      },
    );
  }
}
