import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// this is the comment
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 160,
                    height: 160,
                    color: Colors.blue,
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(
                    color: Colors.black,
                    width: 8,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 25,
                      blurRadius: 15,
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('images/bulb.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 160,
                    height: 160,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
