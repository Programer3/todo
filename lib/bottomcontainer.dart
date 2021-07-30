import 'package:flutter/material.dart';
import 'package:todo/cons_vars.dart';

class Bottomcontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xff757575),
        child: Container(
          decoration: curveborederbottmcontainer,
          child: Padding(
            padding: bottomconatinercolumnpadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Text(
                  'data',
                  style: bottomcontainermaintextstyle,
                )),
                TextField(
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
                  child: Container(
                    decoration: addbuttonboxdecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          'button of ADD',
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
      ),
    );
  }
}
