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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('images/bulb.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  // color: Colors.lightBlue,
                  height: 250,
                  width: 250,
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
                CircleAvatar(
                  backgroundImage: AssetImage('images/bulb.jpg'),
                  radius: 50,
                ),
              ],
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
            child: 
          ),
        ),
*/