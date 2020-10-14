import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/list.dart';
import 'package:todoey/components/tasks_tile.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              taskData.deleteTask(index);
            },
            child: TasksTile(
              itemName: taskData.tasks[index].name,
              checkState: taskData.tasks[index].isChecked,
              toggleCheckbox: (newValue) {
                taskData.toggleCheck(index);
              },
            ),
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
