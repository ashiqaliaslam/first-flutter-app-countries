import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("My first flutter 2app"),
        ),
        body: const Center(
          child: Image(
            image: AssetImage(
              'images/bulb.jpg',
              scale: 2.5,
            ),
          ),
        ),
      ),
    ),
  );
}
