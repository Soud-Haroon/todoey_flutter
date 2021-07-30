import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text('Add Task',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0)),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 25.0),
            FlatButton(
              height: 50.0,
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTaskTitle(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
