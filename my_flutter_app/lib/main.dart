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
    return MyBulbApp();
  }
}

class MyBulbApp extends StatefulWidget {
  @override
  State<MyBulbApp> createState() => _MyBulbAppState();
}

class _MyBulbAppState extends State<MyBulbApp> {
  bool isTurnedOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets Glow'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                isTurnedOn ? Icons.lightbulb : Icons.lightbulb_outline,
                size: 200,
                color: isTurnedOn ? Colors.yellow : Colors.black,
              ),
              ElevatedButton(
                  onPressed: () {
                    print('button pressed');
                    setState(() {
                      isTurnedOn = !isTurnedOn;
                    });
                  },
                  child: Text(!isTurnedOn ? 'Turn On' : 'Turn Off')),
            ],
          ),
        ),
      ),
    );
  }
}
