import 'package:flutter/material.dart';

import '../constants/smooth-configs.dart';
import '../constants/smooth_color.dart';
import '../widgets/smooth_button.dart';
import '../widgets/smooth_text.dart';
import '../widgets/smooth_textField.dart';

class SmoothRegisterForm extends StatelessWidget {
  final dynamic controller;
  final void Function() onSubmit;
  final void Function() haveAccountLink;
  final void Function() passForgotLink;

  const SmoothRegisterForm({
    Key? key,
    required this.onSubmit,
    required this.haveAccountLink,
    required this.passForgotLink, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildRegisterForm(context);
  }

  Widget buildRegisterForm(BuildContext context) {
    return SafeArea(
      child: Form(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SmoothText(
              title: "Inscription".toUpperCase(),
              alignment: TextAlign.center,
              vertical: 25.0,
              style: TextStyle(fontSize: SmoothConfigs.screenWidth! * 0.05, fontWeight: FontWeight.bold),
            ),
            SmoothTextField(
              controller: controller.pseudoController,
              onChange: controller.pseudoChange,
              label: "Pseudo",
              hintText: "pseudo",
              isPasswordField: false,
            ),
            SmoothTextField(
              controller: controller.firstNameController,
              onChange: controller.firstNameChange,
              label: "Nom",
              hintText: "nom",
              isPasswordField: false,
            ),
            SmoothTextField(
              controller: controller.lastNameController,
              onChange: controller.lastNameChange,
              label: "Prénom",
              hintText: "prénom",
              isPasswordField: false,
            ),
            SmoothTextField(
              controller: controller.emailController,
              onChange: controller.emailChange,
              label: "Email",
              hintText: "adresse email",
              isPasswordField: false,
            ),
            SmoothTextField(
              controller: controller.pwdController,
              onChange: controller.passwordChange,
              label: "Mot de passe",
              hintText: "mot de passe",
              isPasswordField: true,
            ),
            SmoothTextField(
              controller: controller.confirmPwdController,
              onChange: controller.confirmPasswordChange,
              label: "Confirmer le mot de passe",
              hintText: "confirmer le mot de passe",
              isPasswordField: true,
            ),
            SmoothButton(
              title: "Inscription",
              onPressed: onSubmit,
              plain: true,
              vertical: 20.0,
            ),
            SmoothButton(
              title: "J'ai déja un compte !",
              onPressed: haveAccountLink,
              color: SmoothColor.primary,
              vertical: 2.0,
            ),
            SmoothButton(
              title: "Mot de passe oublié !",
              alignment: Alignment.centerRight,
              onPressed: passForgotLink,
              vertical: 10.0,
              size: SmoothConfigs.screenWidth! * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
