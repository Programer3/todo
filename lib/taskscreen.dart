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

  late String newtodotext;

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
                onChanged: (value) {
                  newtodotext = value;
                },
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    addtasktextcontroller.clear();
                    tasks.add(Task(name: newtodotext));
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: addbuttonboxdecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Add',
                        style: bottomcontainerbuttontextstyle,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: addbuttonboxdecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'cancel',
                        style: bottomcontainerbuttontextstyle,
                      ),
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
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
    Task(name: 'Buy tatti'),
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
                    '${tasks.length} Tasks',
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
