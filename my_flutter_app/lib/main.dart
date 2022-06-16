import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                'I\'m a dev',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
        child: Scaffold(
          backgroundColor: Colors.pink,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text("Hot reload implemented"),
          ),
          body: const Center(
            child: Image(
              image: AssetImage('images/bulb.jpg'),
            ),
          ),
        ),
*/