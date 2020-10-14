import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/list.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
              ),
            ),
            TextField(
              onChanged: (newValue) {
                newTaskName = newValue;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'New Task',
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 9),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                print('added');
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskName);
                Navigator.pop(context);
              },
              color: Colors.lightBlue,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
