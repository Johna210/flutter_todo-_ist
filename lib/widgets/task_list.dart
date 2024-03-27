import 'package:flutter/material.dart';

import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> tasks = [
    Task(
      taskName: 'LeetCode',
      taskDescription: 'Do 5 leetcode questions',
      dueDate: DateTime.now(),
      taskColor: Colors.red,
    ),
    Task(
      taskName: 'FLutter',
      taskDescription: 'Study Flutter Layouts',
      dueDate: DateTime.now(),
      taskColor: Colors.blue,
    ),
    Task(
      taskName: 'UI Design',
      taskDescription: 'UI design for mobile app final project',
      dueDate: DateTime.now(),
      taskColor: Colors.green,
    ),
  ];

  void addNewTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
  }
}
