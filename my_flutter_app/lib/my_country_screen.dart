// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:my_flutter_app/countries.dart';
import 'package:my_flutter_app/custom_button.dart';
import 'package:my_flutter_app/custom_card.dart';
import 'package:my_flutter_app/quiz.dart';
import 'package:my_flutter_app/reset_quiz_value.dart';
import 'package:my_flutter_app/score_card.dart';
import 'package:my_flutter_app/utils.dart';

// ignore: use_key_in_widget_constructors
class MyCountryApp extends StatefulWidget {
  static const routeName = '/';

  @override
  State<MyCountryApp> createState() => _MyCountryAppState();
}

class _MyCountryAppState extends State<MyCountryApp> {
  Quiz quizScoreCard = Quiz();
  bool showAnswer = false;

  void handleShowAnswer() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      // backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text('Guess the Capital City!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetQuiz,
        // ignore: prefer_const_constructors
        child: Text('Reset'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables

        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/about'),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ScoreCard(
            totalAttempted: quizScoreCard.totalAttempted,
            score: quizScoreCard.score,
          ),
          CustomCard(
            height: 200,
            shadowColor: Colors.grey,
            headingWidget: Text(
              showAnswer ? 'Capital' : 'Country',
              style: theme.textTheme.headline1,
            ),
            bodyWidget: Text(
              showAnswer
                  ? countries[quizScoreCard.totalAttempted]['city']!
                  : countries[quizScoreCard.totalAttempted]['country']!,
              style: theme.textTheme.subtitle1,
            ),
            onPress: handleShowAnswer,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                onPress: markAnswerCorrect,
                title: 'Correct',
                backgroundColor: Colors.green,
              ),
              CustomButton(
                title: 'Wrong',
                onPress: markAnswerWrong,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          CustomButton(
              title: 'Show Result',
              onPress: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: quizScoreCard,
                ).then((value) {
                  final statusValue = value as ResetQuizValue;

                  if (statusValue.status == 'reset') {
                    resetQuiz();
                  }
                });
              })
        ],
      ),
    );
  }

  markAnswerWrong() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.markAnswerWrong();
      } else {
        showEOLAlert(context);
      }
    });
  }

  markAnswerCorrect() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.markAnswerCorrect();
      } else {
        showEOLAlert(context);
      }
    });
  }

  resetQuiz() {
    setState(() {
      quizScoreCard.resetQuiz();
    });
  }
}
