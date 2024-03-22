import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final formatter = DateFormat.yMMMMd();

enum TaskColors { red, blue, green, yellow, black }

class Task {
  Task(
      {required this.taskName,
      required this.taskDescription,
      required this.dueDate,
      required this.taskColor})
      : id = uuid.v4();

  final String id;
  String taskName;
  String taskDescription;
  DateTime dueDate;
  Color taskColor;

  get formattedDate {
    return formatter.format(dueDate);
  }

  get taskLogo {
    return taskName[0].toUpperCase();
  }
}
