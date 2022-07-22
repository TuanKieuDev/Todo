import 'package:flutter/material.dart';

class Task {
  late final String name;
  late bool isDone;

  Task({required this.name, required this.isDone});

  void toggleDone () {
    isDone = !isDone;
  }
}