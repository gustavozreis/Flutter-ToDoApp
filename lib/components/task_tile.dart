import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'task_checkbox.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
