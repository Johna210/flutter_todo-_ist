import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:todo_list/models/task.dart';
import 'package:todo_list/screens/view_todo.dart';
import 'package:todo_list/widgets/task_logo.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.newTask, {super.key});

  final Task newTask;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => TaskDetail(task: newTask),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              TaskLogo(newTask.taskLogo),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  newTask.taskName,
                  style: GoogleFonts.itim(
                    fontSize: 20,
                  ),
                ),
              ),
              Text(newTask.formattedDate),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 3,
                height: 45,
                color: newTask.taskColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
