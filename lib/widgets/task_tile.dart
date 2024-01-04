import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isActive;
  final String title;
  final void Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile({
    required this.title,
    required this.isActive,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          title,
          style: TextStyle(
            decoration: isActive ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isActive,
          onChanged: checkboxCallback,
        ));
  }
}
