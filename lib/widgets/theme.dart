import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.black54,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  static ThemeData yellowTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      backgroundColor: Colors.amberAccent,
      primaryColor: Colors.amberAccent,
      appBarTheme: AppBarTheme(
        color: Colors.amberAccent,
        iconTheme: IconThemeData(color: Colors.black54),
      ));
}
