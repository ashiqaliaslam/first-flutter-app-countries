import 'package:flutter/material.dart';
import 'package:my_flutter_app/countries.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  int score = 0;
  int totalAttempted = 0;
  bool showAnswer = false;

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
        onPressed: () {
          setState(() {
            score = 0;
            totalAttempted = 0;
          });
        },
        // ignore: prefer_const_constructors
        child: Text('Reset'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Center(
            child: Text(
              'Score ${score}/${totalAttempted}',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 200,
              child: Card(
                elevation: 20,
                shadowColor: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      showAnswer ? 'Capital' : 'Country',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      showAnswer
                          ? countries[totalAttempted]['city']!
                          : countries[totalAttempted]['country']!,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            // width: 50,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAnswer = !showAnswer;
                  });
                },
                child: Text('Show ${showAnswer ? 'Answer' : 'Question'}'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (totalAttempted < countries.length - 1) {
                      score++;
                      totalAttempted++;
                    } else {
                      Alert(
                        context: context,
                        title: 'ALERT',
                        desc: 'You already have reached to the end of list.',
                      ).show();
                    }
                  });
                },
                child: const Text('Correct'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (totalAttempted < countries.length - 1) {
                      totalAttempted++;
                    } else {
                      Alert(
                        context: context,
                        title: 'ALERT',
                        desc: 'You already have reached to the end of list.',
                      ).show();
                    }
                  });
                },
                child: const Text('Wrong'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
