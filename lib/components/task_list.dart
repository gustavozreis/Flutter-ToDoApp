import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/task.dart';
import '../../components/task_tile.dart';
import '../models/tasks_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  /*setState(() {
                  widget.tasks[index].toggleDone();
                });*/
                },
              );
            },
            itemCount: taskData.taskCount,
          ),
        );
      },
    );
  }
}
