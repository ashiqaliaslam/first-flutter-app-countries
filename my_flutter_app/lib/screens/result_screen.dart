import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_strings.dart';
import 'package:my_flutter_app/widgets/custom_button.dart';
import 'package:my_flutter_app/widgets/custom_card.dart';
import 'package:my_flutter_app/model/reset_quiz_value.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/result';
  // ignore: use_key_in_widget_constructors
  const ResultScreen({this.score = 0, this.totalAttempted = 0});

  final int score;
  final int totalAttempted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              height: 300,
              headingWidget: Text(
                AppStrings.quizEnded,
                style: theme.textTheme.headline1,
              ),
              bodyWidget: Text(
                '$score / $totalAttempted',
                style: theme.textTheme.headline1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  title: AppStrings.restart,
                  onPress: () => Navigator.pop(
                    context,
                    ResetQuizValue(status: AppStrings.reset),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
