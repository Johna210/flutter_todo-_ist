import 'package:flutter/material.dart';

import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (ctx, index) => TaskItem(tasks[index]),
    );
  }
}
