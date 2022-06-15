import 'package:flutter/material.dart';
// To get the hot reload feature work wee need to restructure
// our code by using stateless or stateful custom widgets

// Instead of passing widget tree in runApp(), we create a
// new custom widget and pass that custom widget to runnApp

// WRONG
// void main() {
//   runApp(MaterialApp(
//     home: Text("My Flutter App"),
//   ));
// }
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
    );
  }
}
