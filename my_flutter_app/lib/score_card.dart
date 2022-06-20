import 'package:flutter/material.dart';
import 'package:my_flutter_app/custom_card.dart';
import 'package:my_flutter_app/utils.dart';

class ScoreCard extends StatelessWidget {
  ScoreCard({
    this.score = 0,
    this.totalAttempted = 0,
  });

  int score;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      shadowColor: Colors.grey,
      elevation: 5,
      backgroundColor: Colors.lightBlue.shade100,
      headingWidget: Text(
        'Score',
        style: getHeadingTextStyle(),
      ),
      bodyWidget: Text(
        '$score / $totalAttempted',
        style: getHeadingTextStyle(),
      ),
    );
  }
}
