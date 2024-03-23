import 'package:flutter/material.dart';

import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/custom_app_bar.dart';
import 'package:todo_list/widgets/view_space.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            'assets/images/3.png',
            width: 500,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          ViewSpace(
            input: task.taskName,
            title: 'Title',
            height: 60,
          ),
          ViewSpace(
            input: task.taskDescription,
            title: 'Description',
            height: 170,
          ),
          ViewSpace(
            input: task.formattedDate,
            title: 'Deadline',
            height: 60,
          )
        ],
      ),
    );
  }
}
