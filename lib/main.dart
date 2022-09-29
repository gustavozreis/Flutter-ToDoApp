import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

import 'models/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskData(),
        ),
      ],
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
