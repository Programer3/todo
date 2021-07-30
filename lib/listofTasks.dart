import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'task.dart';

class ListofTasks extends StatefulWidget {
  final List<Task> tasks;
  ListofTasks(this.tasks);
  @override
  _ListofTasksState createState() => _ListofTasksState();
}

class _ListofTasksState extends State<ListofTasks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
            ischecked: widget.tasks[index].isdone,
            taskTitle: widget.tasks[index].name,
            checkboxcallback: (bool? checkboxstate) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
            setstate: () {
              setState(() {
                widget.tasks.removeAt(index);
              });
            },
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }
}


// (
//       children: [
//         Tasktile(
//           taskTitle: tasks[0].name,
//           ischecked: tasks[0].isdone,
//         ),
//         Tasktile(
//           ischecked: tasks[0].isdone,
//           taskTitle: tasks[0].name,
//         ),
//         Tasktile(
//           ischecked: tasks[0].isdone,
//           taskTitle: tasks[0].name,
//         ),
//       ],
//     )