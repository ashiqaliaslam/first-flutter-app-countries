import 'package:flutter/material.dart';
// Whenever we create a base widget it is by default
// align to top left corner

// Sometimes it is not even visible because of appBar
// or mobile device screen design.

// safeArea can solve this issue

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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.pink,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text("Hot reload implemented"),
          ),
          body: const Center(
            child: Image(
              // image: NetworkImage('https://i.gifer.com/4Cb2.gif', scale: 2.5),
              image: AssetImage('images/bulb.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
