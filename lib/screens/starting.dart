import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:todo_list/screens/todo_list.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void _getStarted(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => const TodoList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/todo-list-logo.png'),
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'My Todo-List',
              style: GoogleFonts.itim(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              _getStarted(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
