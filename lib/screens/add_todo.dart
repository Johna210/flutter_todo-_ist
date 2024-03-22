import 'package:flutter/material.dart';
import 'package:todo_list/widgets/add_task.dart';

import 'package:todo_list/widgets/custom_app_bar.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar,
      backgroundColor: Colors.white,
      body: const AddTaskWidget(),
    );
  }
}
