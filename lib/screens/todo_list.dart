import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Todo list',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}
