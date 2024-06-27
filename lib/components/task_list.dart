import 'package:flutter/material.dart';
import 'package:material_todo/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:material_todo/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return Dismissible(
              key: Key(task.name),
              onDismissed: (direction) {
                taskData.deleteTask(task);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${task.name} deleted'),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: () {
                        taskData.addTask(task.name);
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
                isChecked: task.isDone,
                taskTitle: task.name,
                toggleCheckboxState: (bool? value) {
                  taskData.updateTask(task);
                },
              ),
            );
          },
        );
      },
    );
  }
}
