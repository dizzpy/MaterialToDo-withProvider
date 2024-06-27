import 'package:flutter/material.dart';
import 'package:material_todo/components/task_list.dart';
import 'package:material_todo/models/task.dart';
import 'package:material_todo/screens/add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();

  List<Task> taskList = [];
}

class _TasksScreenState extends State<TasksScreen> {
  void addTask(String taskName) {
    setState(() {
      widget.taskList.add(Task(name: taskName));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(addTaskCallback: addTask),
              ),
            ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Task List',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '${widget.taskList.length} Tasks',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // List View
              Expanded(child: TaskList(taskList: widget.taskList)),
            ],
          ),
        ),
      ),
    );
  }
}
