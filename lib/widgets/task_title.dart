import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?>? checkboxCallback;
  // final Function longPressCallback;

  TaskTitle({required this.isChecked, required this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onLongPress: longPressCallback(),
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (x) {
          checkboxCallback!(x);
        }
      )

    );
  }
}

// (x){
// setState(() {
// isChecked = x ?? false;
// });
// }
// )
//
// class TaskCheckBox extends StatelessWidget {
//
//   final bool checkboxState;
//   final ValueChanged<bool?>? onChanged;
//
//   // final Function toggleCheckboxState;
//
//   TaskCheckBox({required this.checkboxState, required this.onChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }



