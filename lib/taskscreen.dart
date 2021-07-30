import 'package:flutter/material.dart';
import 'cons_vars.dart';
import 'listofTasks.dart';
import 'task.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class Taskscreen extends StatefulWidget {
  static final id = 'taskscreen';

  @override
  _TaskscreenState createState() => _TaskscreenState();
}

class _TaskscreenState extends State<Taskscreen> {
  TextEditingController addtasktextcontroller = TextEditingController();

  showalertdialog(BuildContext context) {
    showPlatformDialog(
      context: context,
      builder: (_) => BasicDialogAlert(
        title: Center(
          child: Text(
            'Add another Todo',
            style: bottomcontainermaintextstyle,
          ),
        ),
        content: Padding(
          padding: bottomconatinercolumnpadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                maxLines: 2,
                minLines: 1,
                keyboardType: TextInputType.multiline,
                controller: addtasktextcontroller,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Type your task to add...',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: addbuttonboxdecoration,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(
                      (Icons.add),
                      size: 40,
                      color: Colors.white,
                    ),
                    label: Text(
                      'ADD',
                      style: bottomcontainerbuttontextstyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy tatti'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showalertdialog(context);
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) => Bottomcontainer(),
          // );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Padding(
              padding: maintopnameandinfopadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Todoey',
                    style: mainTodoeytextstyle,
                  ),
                  Text(
                    '12 Tasks',
                    style: nooftaskstextstyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: curvebordermaincontainer,
              child: ListofTasks(tasks),
            ),
          ),
        ],
      ),
    );
  }
}
