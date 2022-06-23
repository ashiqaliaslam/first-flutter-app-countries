// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_strings.dart';
import 'package:my_flutter_app/data/countries.dart';
import 'package:my_flutter_app/widgets/custom_button.dart';
import 'package:my_flutter_app/widgets/custom_card.dart';
import 'package:my_flutter_app/model/quiz.dart';
import 'package:my_flutter_app/model/reset_quiz_value.dart';
import 'package:my_flutter_app/widgets/score_card.dart';
import 'package:my_flutter_app/utils/utils.dart';

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
        title: Text(AppStrings.appTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetQuiz,
        // ignore: prefer_const_constructors
        child: Text(AppStrings.reset),
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
                    AppStrings.aboutUs,
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
              showAnswer ? AppStrings.capital : AppStrings.country,
              style: theme.textTheme.headline1,
            ),
            bodyWidget: Text(
              showAnswer
                  ? countries[quizScoreCard.totalAttempted]
                      [AppStrings.city.toLowerCase()]!
                  : countries[quizScoreCard.totalAttempted]
                      [AppStrings.country.toLowerCase()]!,
              style: theme.textTheme.subtitle1,
            ),
            onPress: handleShowAnswer,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                onPress: markAnswerCorrect,
                title: AppStrings.correct,
                backgroundColor: Colors.green,
              ),
              CustomButton(
                title: AppStrings.wrong,
                onPress: markAnswerWrong,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          CustomButton(
              title: AppStrings.showResult,
              onPress: () {
                Navigator.pushNamed(
                  context,
                  '/result',
                  arguments: quizScoreCard,
                ).then((value) {
                  final statusValue = value as ResetQuizValue;

                  if (statusValue.status == AppStrings.reset) {
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
