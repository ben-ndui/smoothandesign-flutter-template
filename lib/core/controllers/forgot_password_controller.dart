import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smoothstarter/core/controllers/smooth_controller.dart';

import '../../router/router.gr.dart';

class ForgotPasswordController extends ChangeNotifier{
  static ForgotPasswordController controller = ForgotPasswordController();

  TextEditingController emailController = TextEditingController();



  void onSubmit(BuildContext context) {
    context.router.replace(const SmoothRedirection());
  }

  void connexionLink(BuildContext context) {
    context.router.push(const SmoothLogin());
  }

  void cancelLink(BuildContext context) {
    context.router.pop();
  }

  void onHover(BuildContext context) {

  }

  void emailChange(String value){
    print(value);
  }
}