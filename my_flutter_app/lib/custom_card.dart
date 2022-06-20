import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.elevation = 20,
    this.headingWidget,
    this.bodyWidget,
    this.backgroundColor,
    this.shadowColor,
    this.height,
    this.onPress,
  });

  final double? elevation;
  final Widget? headingWidget;
  final Widget? bodyWidget;
  final double? height;
  final Color? backgroundColor;
  final Color? shadowColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: height,
        child: GestureDetector(
          onTap: onPress,
          child: Card(
            elevation: elevation,
            shadowColor: shadowColor,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: headingWidget),
                Container(child: bodyWidget),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
