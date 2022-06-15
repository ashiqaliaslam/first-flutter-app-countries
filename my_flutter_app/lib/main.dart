import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("My first flutter app"),
        ),
        body: const Center(
          child: Image(
              image: NetworkImage('https://i.gifer.com/4Cb2.gif', scale: 2.5)),
        ),
      ),
    ),
  );
}
