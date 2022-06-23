import 'package:flutter/material.dart';
import 'package:my_flutter_app/custom_button.dart';
import 'package:my_flutter_app/custom_card.dart';

// ignore: use_key_in_widget_constructors
class AboutScreen extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CustomCard(
            bodyWidget: Text(
              'This is about screen',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            height: 300,
          ),
          CustomButton(
            title: 'Go Back',
            onPress: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
