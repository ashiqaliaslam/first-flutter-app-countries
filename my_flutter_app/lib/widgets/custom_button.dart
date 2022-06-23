import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomButton({
    required this.title,
    required this.onPress,
    this.backgroundColor = Colors.blueAccent,
  });

  final String title;
  final VoidCallback onPress;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      child: Text(title),
    );
  }
}
