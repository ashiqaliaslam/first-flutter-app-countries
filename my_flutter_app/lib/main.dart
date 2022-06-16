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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'Hello World!',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Image(
                image: AssetImage('images/bulb.jpg'),
              ),
            ],
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
            child: 
          ),
        ),
*/