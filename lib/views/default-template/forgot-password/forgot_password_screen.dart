import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoothTheme/forms/smooth_forgot_password_form.dart';
import 'package:smoothstarter/core/controllers/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildForgotPasswordPage(),
    );
  }

  Widget buildForgotPasswordPage() {
    return Consumer<ForgotPasswordController>(
      builder: (context, controller, child) {
        return SmoothForgotPasswordForm(
          pageController: controller,
          onSubmit: () => controller.onSubmit(context),
          connexionLink: () => controller.connexionLink(context),
          cancelRedirection: () => controller.cancelLink(context),
          onButtonsHover: (value) => controller.onHover(context),
        );
      },
    );
  }
}
