import 'package:flutter/material.dart';

class ViewSpace extends StatelessWidget {
  const ViewSpace(
      {super.key,
      required this.input,
      required this.title,
      required this.height});

  final double height;
  final String title;
  final String input;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 330,
          height: height,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            input,
            style: const TextStyle(fontSize: 17),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
