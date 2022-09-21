import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/screens/components/task_tile.dart';

import 'list_checkbox.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
      children: const [
        TaskTile(title: 'Buy milk'),
        TaskTile(title: 'Buy shop'),
        TaskTile(title: 'go to school'),
      ],
    );
  }
}
