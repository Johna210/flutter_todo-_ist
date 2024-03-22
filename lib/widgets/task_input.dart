import 'package:flutter/material.dart';

class TaskInput extends StatelessWidget {
  const TaskInput(
      {super.key,
      required this.title,
      required this.lines,
      required this.input});

  final TextEditingController input;

  final String title;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(241, 0, 100, 177),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          child: TextField(
            controller: input,
            maxLines: lines,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
