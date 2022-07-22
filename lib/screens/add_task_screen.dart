import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  late final Function addTaskCallback;
  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
              onChanged: (value) => {
                newTaskTitle = value
              },
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
