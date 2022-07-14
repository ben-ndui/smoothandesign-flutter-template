import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smoothstarter/core/controllers/smooth_controller.dart';
import 'package:smoothstarter/router/router.gr.dart';

class LoginController extends SmoothController{
  static LoginController controller = LoginController();

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  void emailChange(String value){
    print(value);
  }

  void passwordChange(String value){
    print(value);
  }

  void onSubmit(BuildContext context) {
    context.router.push(const SmoothRedirection());
  }

  void forgotLink(BuildContext context) {
    context.router.push(const SmoothForgotPassword());
  }

  void signupLink(BuildContext context) {
    context.router.push(const SmoothRegister());
  }

  void onHover(BuildContext context) {

  }
}