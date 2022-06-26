import 'package:flutter/material.dart';

ElevatedButton buttonSubmit(
    Function()? onPressed, String name, Color color, double paddingSize) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(name, style: TextStyle(fontSize: 20, color: Colors.white),),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(color),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(paddingSize)),
    ),
  );
}
