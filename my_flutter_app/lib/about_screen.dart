import 'package:flutter/material.dart';
import 'package:my_flutter_app/custom_button.dart';
import 'package:my_flutter_app/custom_card.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
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
