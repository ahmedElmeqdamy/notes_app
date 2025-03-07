
import 'package:flutter/material.dart';

AppBar buildAppBar(String title,IconData iconData) {
  return AppBar(
    backgroundColor: Color(0xFF3A2E39),
    elevation: 2,
    title: Text(
      title,
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.all(12.0),
        child: GestureDetector(
          child: Icon(
            iconData,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    ],
  );
}