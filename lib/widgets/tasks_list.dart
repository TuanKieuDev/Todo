import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_title.dart';
import 'package:todo_provider/models/task_data.dart';

class TasksList extends StatefulWidget {


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemCount: Provider.of<TaskData>(context).taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTitle(
                  isChecked: task.isDone,
                  taskTitle: task.name,
                  checkboxCallback:  (x){
                    // setState(() {
                    //   taskData.tasks[index].toggleDone();
                    // });
                    taskData.updateTask(task);
                  },


              );
            });
      },

    );
  }
}
