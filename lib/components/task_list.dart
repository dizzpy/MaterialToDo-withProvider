import 'package:flutter/material.dart';
import 'package:material_todo/components/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Container(
          child: ListView(
            children: [
              TaskTitle(),
              TaskTitle(),
              TaskTitle(),
              TaskTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
