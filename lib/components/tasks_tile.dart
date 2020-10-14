import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String itemName;
  final bool checkState;
  final Function toggleCheckbox;

  TasksTile({this.itemName, this.checkState, this.toggleCheckbox});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemName,
        style: TextStyle(
            decoration: checkState ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: checkState,
        onChanged: toggleCheckbox,
        activeColor: Colors.lightBlue,
      ),
    );
  }
}
