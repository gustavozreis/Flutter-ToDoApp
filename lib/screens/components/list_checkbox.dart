import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCheckbox extends StatefulWidget {
  const ListCheckbox({Key? key}) : super(key: key);

  @override
  State<ListCheckbox> createState() => _ListCheckboxState();
}

class _ListCheckboxState extends State<ListCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
