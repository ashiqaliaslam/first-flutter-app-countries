import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// this is the comment
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                color: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
                // margin: const EdgeInsets.all(10),
                child: const Text(
                  'Hello World!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Image(
                height: 150,
                width: 150,
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