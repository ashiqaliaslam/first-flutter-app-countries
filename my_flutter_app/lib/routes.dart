import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/about_screen.dart';
import 'package:my_flutter_app/screens/my_country_screen.dart';
import 'package:my_flutter_app/model/quiz.dart';
import 'package:my_flutter_app/screens/result_screen.dart';

class CustomRoutes {
  static generateRoutes(settings) {
    switch (settings.name) {
      case ResultScreen.routeName:
        final arg = settings.arguments as Quiz;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: arg.score,
            totalAttempted: arg.totalAttempted,
          ),
        );
      case AboutScreen.routeName:
        return MaterialPageRoute(builder: (context) => AboutScreen());
      default:
        return MaterialPageRoute(builder: (context) => MyCountryApp());
    }
  }
}


      // routes: {
      //   '/': (context) => MyCountryApp(),
      //   '/about': (context) => AboutScreen(),
      // },