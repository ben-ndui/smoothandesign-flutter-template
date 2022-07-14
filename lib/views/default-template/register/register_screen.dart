import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoothTheme/forms/smooth_register_form.dart';
import 'package:smoothstarter/core/controllers/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildRegisterScreen(),
    );
  }

  Consumer<RegisterController> buildRegisterScreen() {
    return Consumer<RegisterController>(
      builder: (context, controller, child) {
        return SmoothRegisterForm(
          controller: controller,
          passForgotLink: () => controller.forgotPassword(context),
          haveAccountLink: () => controller.haveAccountLink(context),
          onSubmit: () => controller.onSubmit(context),
        );
      },
    );
  }
}
