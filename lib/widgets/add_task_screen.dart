import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/data.dart';
import 'package:todolist/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final controller = TextEditingController();

  AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                width: 5.0,
                color: Colors.lightBlueAccent,
              ))),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(
                  Task(title: controller.text),
                );
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size.fromHeight(60.0),
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
