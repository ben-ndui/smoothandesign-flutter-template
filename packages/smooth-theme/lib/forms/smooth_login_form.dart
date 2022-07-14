import 'package:flutter/material.dart';

import '../constants/smooth-configs.dart';
import '../constants/smooth_color.dart';
import '../widgets/smooth_button.dart';
import '../widgets/smooth_text.dart';
import '../widgets/smooth_textField.dart';

class SmoothLoginForm extends StatelessWidget {
  final dynamic controller;
  final String? title;
  final String? hintText;
  final String? passwordHint;
  final String? connexionText;
  final String? submitText;
  final String? signupText;
  final String? forgPassText;
  final void Function()? forgotPasswordLink;
  final void Function()? onSubmit;
  final void Function()? signupButtonRedirection;

  const SmoothLoginForm({
    Key? key,
    this.title,
    this.hintText,
    this.passwordHint,
    this.connexionText,
    this.submitText,
    this.signupText,
    this.forgPassText,
    this.forgotPasswordLink,
    this.onSubmit,
    this.signupButtonRedirection, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildLoginForm();
  }

  Widget buildLoginForm() {
    return SafeArea(
      child: Form(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SmoothText(
              title: title != null
                  ? title!.toUpperCase()
                  : "Connexion".toUpperCase(),
              alignment: TextAlign.center,
              vertical: 100.0,
              style: TextStyle(fontSize: SmoothConfigs.screenWidth! * 0.05, fontWeight: FontWeight.bold),
            ),
            SmoothTextField(
              controller: controller.emailController,
              onChange: controller.emailChange,
              label: "",
              hintText: hintText != null ? hintText! : "Identifiant",
              isPasswordField: false,
            ),
            SmoothTextField(
              controller: controller.pwdController,
              onChange: controller.passwordChange,
              label: "",
              hintText: passwordHint != null ? passwordHint! : "Mot de passe",
              isPasswordField: true,
            ),
            SmoothButton(
              title: submitText != null ? submitText! : "Connexion",
              onPressed: onSubmit != null ? onSubmit! : (){},
              plain: true,
              vertical: 20.0,
            ),
            SmoothButton(
              title: signupText != null ? signupText! : "M'inscrire",
              onPressed: signupButtonRedirection != null ? signupButtonRedirection! : (){},
              color: SmoothColor.primary,
              vertical: 2.0,
            ),
            SmoothButton(
              title: forgPassText != null ? forgPassText! : "Mot de passe oublié !",
              alignment: Alignment.centerRight,
              onPressed: forgotPasswordLink != null ? forgotPasswordLink! : (){},
              vertical: 100.0,
              size: SmoothConfigs.screenWidth! * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
