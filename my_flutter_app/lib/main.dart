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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    print('its a button');
                  },
                  onLongPress: () {
                    print('this button is log pressed');
                  },
                  child: Text('Text Button'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('elevated button');
                  },
                  onLongPress: () {
                    print('this button is log pressed and elevated');
                  },
                  child: Text('Text elevated Button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('elevated button 2');
                  },
                  onLongPress: () {
                    print('this button is log pressed and elevated 2');
                  },
                  child: Text('Text elevated Button 2'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => states.contains(MaterialState.pressed)
                          ? Colors.purple
                          : Colors.black,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print('outlined button pressed');
                  },
                  onLongPress: () {
                    print('outlined button long pressed');
                  },
                  child: Text('Outlined Button 2'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                ),
                IconButton(
                  onPressed: () => print('Icon button pressed'),
                  icon: Icon(Icons.volume_down_outlined),
                  color: Colors.purple,
                  iconSize: 34,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print('floating action button pressed'),
          backgroundColor: Colors.orange,
          splashColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
