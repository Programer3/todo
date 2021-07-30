import 'package:flutter/material.dart';

var bottomconatinercolumnpadding =
    EdgeInsets.only(top: 12, bottom: 25, right: 20, left: 20);

var maintopnameandinfopadding =
    EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30);

var curveborederbottmcontainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
);

var addbuttonboxdecoration = BoxDecoration(
  color: Colors.lightBlue,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
      bottomLeft: Radius.circular(30),
      bottomRight: Radius.circular(30)),
);

var curvebordermaincontainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20), topRight: Radius.circular(20)),
);

var bottomcontainerbuttontextstyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

var bottomcontainermaintextstyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.lightBlue,
);

var mainTodoeytextstyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

var nooftaskstextstyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);
