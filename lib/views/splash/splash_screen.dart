import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/widgets/smooth_textField.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashBody(context),
    );
  }

  Widget splashBody(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: const [
        SmoothTextField(label: "label", hintText: "hintText", isPasswordField: false),
      ],
    );
  }
}
