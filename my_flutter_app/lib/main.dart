import 'package:flutter/material.dart';
import 'package:my_flutter_app/countries.dart';
import 'package:my_flutter_app/custom_button.dart';
import 'package:my_flutter_app/custom_card.dart';
import 'package:my_flutter_app/quiz.dart';
import 'package:my_flutter_app/score_card.dart';
import 'package:my_flutter_app/utils.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyCountryApp());
  }
}

// ignore: use_key_in_widget_constructors
class MyCountryApp extends StatefulWidget {
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
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ScoreCard(
            totalAttempted: quizScoreCard.totalAttempted,
            score: quizScoreCard.score,
          ),
          CustomCard(
            height: 200,
            shadowColor: Colors.grey,
            headingWidget: Text(
              showAnswer ? 'Capital' : 'Country',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
            ),
            bodyWidget: Text(
              showAnswer
                  ? countries[quizScoreCard.totalAttempted]['city']!
                  : countries[quizScoreCard.totalAttempted]['country']!,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Colors.blueAccent),
            ),
          ),
          SizedBox(
            // width: 50,
            child: Center(
              child: CustomButton(
                onPress: handleShowAnswer,
                title: 'Show ${showAnswer ? 'Answer' : 'Question'}',
              ),
            ),
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
