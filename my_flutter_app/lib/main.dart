import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/my_country_screen.dart';
import 'package:my_flutter_app/routes.dart';
import 'package:my_flutter_app/utils/theme.dart';

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
