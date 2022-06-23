import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_strings.dart';
import 'package:my_flutter_app/widgets/custom_button.dart';
import 'package:my_flutter_app/widgets/custom_card.dart';

// ignore: use_key_in_widget_constructors
class AboutScreen extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.aboutScreenTitle),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CustomCard(
            bodyWidget: Text(
              AppStrings.aboutScreenText,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            height: 300,
          ),
          CustomButton(
            title: AppStrings.goBack,
            onPress: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
