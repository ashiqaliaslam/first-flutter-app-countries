import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_strings.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void showEOLAlert(BuildContext context) {
  Alert(
    context: context,
    title: AppStrings.alertTitle,
    desc: AppStrings.endOfQuiz,
  ).show();
}
