import 'package:flutter/material.dart';
import 'package:my_flutter_app/about_screen.dart';
import 'package:my_flutter_app/my_country_screen.dart';
import 'package:my_flutter_app/quiz.dart';
import 'package:my_flutter_app/result_screen.dart';
import 'package:my_flutter_app/routes.dart';
import 'package:my_flutter_app/theme.dart';

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
      // ignore: body_might_complete_normally_nullable
      onGenerateRoute: (settings) => CustomRoutes.generateRoutes(settings),
      initialRoute: MyCountryApp.routeName,
      theme: AppTheme.appTheme,
    );
  }
}
