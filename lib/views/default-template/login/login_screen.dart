import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoothTheme/forms/smooth_login_form.dart';
import 'package:smoothstarter/core/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginBody(context),
    );
  }

  Widget loginBody(BuildContext context) {
    return SafeArea(
      child: Consumer<LoginController>(
        builder: (context, controller, child) {
          return SmoothLoginForm(
            controller: controller,
            onSubmit: () => controller.onSubmit(context),
            forgotPasswordLink: () => controller.forgotLink(context),
            signupButtonRedirection: () => controller.signupLink(context),
          );
        },
      ),
    );
  }
}
