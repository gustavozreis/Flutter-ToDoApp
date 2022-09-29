import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'task_checkbox.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function() longPressCallback;

  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
