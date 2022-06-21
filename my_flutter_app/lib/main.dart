import 'package:flutter/material.dart';
import 'package:my_flutter_app/about_screen.dart';
import 'package:my_flutter_app/my_country_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCountryApp(),
      theme: ThemeData(
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
      ),
    );
  }
}
