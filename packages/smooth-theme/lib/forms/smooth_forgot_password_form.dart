import 'package:flutter/material.dart';

import '../constants/smooth-configs.dart';
import '../constants/smooth_color.dart';
import '../smooth_utils.dart';
import '../widgets/smooth_button.dart';
import '../widgets/smooth_text.dart';
import '../widgets/smooth_textField.dart';


class SmoothForgotPasswordForm extends StatelessWidget {
  final String? title;
  final String? description;
  final String? hintText;
  final String? passwordHint;
  final String? connexionText;
  final String? submitButtonText;
  final String? cancelText;
  final String? loginLinkText;
  final void Function()? connexionLink;
  final void Function(bool)? onButtonsHover;
  final void Function()? onSubmit;
  final void Function()? cancelRedirection;
  final dynamic pageController;

  const SmoothForgotPasswordForm({
    Key? key,
    this.title,
    this.description,
    this.hintText,
    this.passwordHint,
    this.connexionText,
    this.submitButtonText,
    this.cancelText,
    this.loginLinkText,
    this.connexionLink,
    this.onSubmit,
    this.cancelRedirection, this.onButtonsHover, this.pageController,
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
            smoothSpacer(vertical: SmoothConfigs.screenWidth! * 0.25),
            SmoothText(
              title: title != null
                  ? title!.toUpperCase()
                  : "Réinitialisation de mot de passe".toUpperCase(),
              alignment: TextAlign.justify,
              vertical: 1.0,
              style: TextStyle(fontSize: SmoothConfigs.screenWidth! * 0.045, fontWeight: FontWeight.bold),
            ),
            SmoothText(
              title: description != null
                  ? description!
                  : "Description",
              alignment: TextAlign.justify,
              vertical: 1.0,
              style: TextStyle(fontSize: SmoothConfigs.screenWidth! * 0.025, fontWeight: FontWeight.normal),
            ),
            smoothSpacer(vertical: SmoothConfigs.screenWidth! * 0.20),
            SmoothTextField(
              controller: pageController.emailController,
              onChange: pageController.emailChange,
              label: "Adresse email",
              hintText: hintText != null ? hintText! : "Votre adresse email",
              isPasswordField: false,
            ),
            SmoothButton(
              title: submitButtonText != null ? submitButtonText! : "Réinitialiser",
              onPressed: onSubmit != null ? onSubmit! : (){},
              plain: true,
              vertical: 20.0,
              onHover: onButtonsHover != null ? onButtonsHover! : (value){},
            ),
            SmoothButton(
              title: cancelText != null ? cancelText! : "Annuler",
              onPressed: cancelRedirection != null ? cancelRedirection! : (){},
              color: SmoothColor.primary,
              vertical: 2.0,
            ),
            SmoothButton(
              title: loginLinkText != null ? loginLinkText! : "Me connecter",
              alignment: Alignment.centerRight,
              onPressed: connexionLink != null ? connexionLink! : (){},
              vertical: 100.0,
              size: SmoothConfigs.screenWidth! * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
