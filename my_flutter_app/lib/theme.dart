import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.lightBlue.shade100,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w900,
      ),
      subtitle1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Colors.indigo,
      ),
    ),
  );
}
