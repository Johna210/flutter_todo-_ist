import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/task_input.dart';

final formatter = DateFormat.yMMMMd();

class AddTaskWidget extends StatefulWidget {
  const AddTaskWidget({super.key});

  @override
  State<StatefulWidget> createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  DateTime? _selectedDate;
  String _selectedColor = "RED";
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _presentDatePicker() async {
    final now = DateTime.now();
    final lastDate = DateTime(now.year, now.month + 1, now.day);

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: lastDate,
    );

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  Color _selectColor(type) {
    if (type == 'RED') {
      return Colors.red;
    } else if (type == 'BLUE') {
      return Colors.blue;
    } else if (type == 'GREEN') {
      return Colors.blue;
    } else if (type == 'YELLOW') {
      return Colors.yellow;
    } else {
      return Colors.black;
    }
  }

  void _addNewTask() {
    if (_titleController.text.trim().isEmpty ||
        _descriptionController.text.trim().isEmpty ||
        _selectedDate == null) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
            'Please Enter a valid Task title and description',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
    }

    final newTask = Task(
      taskName: _titleController.text,
      taskDescription: _descriptionController.text,
      dueDate: _selectedDate!,
      taskColor: _selectColor(_selectedColor),
    );

    Navigator.pop(context, newTask);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            'Create a New Task',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              children: [
                TaskInput(
                  title: 'Main Task title',
                  input: _titleController,
                  lines: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Due date',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(241, 0, 100, 177),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(_selectedDate == null
                            ? 'no date selected'
                            : formatter.format(_selectedDate!)),
                      ],
                    ),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Select task color',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(241, 0, 100, 177),
                            ),
                          ),
                          DropdownButton(
                            value: _selectedColor,
                            items: TaskColors.values
                                .map(
                                  (taskColor) => DropdownMenuItem(
                                    value: taskColor.name.toUpperCase(),
                                    child: Text(
                                      taskColor.name.toUpperCase(),
                                      style: const TextStyle(color: Colors.red),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(
                                () {
                                  _selectedColor = value!;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TaskInput(
                  title: 'Description',
                  lines: 5,
                  input: _descriptionController,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: _addNewTask,
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: const Text(
                    'Add task',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
