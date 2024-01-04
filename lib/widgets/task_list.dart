import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/data.dart';
import 'package:todolist/widgets/task_tile.dart';
import 'package:todolist/models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, widget) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.tasks[index].title,
              isActive: taskData.tasks[index].isDone,
              checkboxCallback: (val) {
                taskData.updateCheck(index);
              },
              longPressCallback: () {
                taskData.removeTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
