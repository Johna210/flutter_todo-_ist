import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/screens/add_todo.dart';

import 'package:todo_list/widgets/custom_app_bar.dart';
import 'package:todo_list/widgets/task_item.dart';
import 'package:todo_list/models/task.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
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
  void _createTask(BuildContext context) async {
    final Task? newTask = await Navigator.push<Task?>(
      context,
      MaterialPageRoute<Task?>(
        builder: (ctx) => const AddTodoScreen(),
      ),
    );

    _addTask(newTask as Task);
  }

  void _addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
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
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (ctx, index) => TaskItem(tasks[index]),
              ),
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
