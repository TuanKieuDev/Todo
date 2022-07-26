import 'package:flutter/material.dart';
import 'package:todo_provider/models/task_data.dart';
import 'package:todo_provider/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}



