import 'dart:ui';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      this.width,
      this.height = 30,
      required this.text,
      required this.backgroundColor,
      required this.textColor})
      : super(key: key);
  double? width;
  double? height;
  int textColor;
  int backgroundColor;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(backgroundColor)),
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
            onPressed: null,
            child: Text(
              text,
              style: TextStyle(
                  color: Color(textColor), fontWeight: FontWeight.bold),
            )));
  }
}
