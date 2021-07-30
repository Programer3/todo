import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final Function(bool?) checkboxcallback;

  Tasktile(
      {required this.ischecked,
      required this.taskTitle,
      required this.checkboxcallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: ischecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
