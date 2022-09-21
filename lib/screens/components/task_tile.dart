import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_checkbox.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: ListCheckbox(),
    );
  }
}
