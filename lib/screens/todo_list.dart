import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/screens/add_todo.dart';

import 'package:todo_list/widgets/custom_app_bar.dart';
import 'package:todo_list/widgets/task_list.dart';
import 'package:todo_list/models/task.dart';

class TodoList extends StatelessWidget {
  TodoList({super.key});

  void _createTask(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => const AddTodoScreen(),
      ),
    );
  }

  void _addTask(Task newTask) {
    myTodoList.add(newTask);
  }

  final List<Task> myTodoList = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/checklist.jpg',
              width: 500,
              height: 200,
            ),
            Text(
              'Tasks List',
              style:
                  GoogleFonts.itim(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: TaskList(tasks: myTodoList),
            ),
            ElevatedButton(
              onPressed: () {
                _createTask(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text(
                'Create Task',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
