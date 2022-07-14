import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smoothstarter/core/controllers/smooth_controller.dart';

import '../../router/router.gr.dart';

class RegisterController extends SmoothController{

  static RegisterController controller = RegisterController();

  TextEditingController pseudoController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController confirmPwdController = TextEditingController();

  void pseudoChange(String value){
    print(value);
  }

  void emailChange(String value){
    print(value);
  }

  void firstNameChange(String value){
    print(value);
  }

  void lastNameChange(String value){
    print(value);
  }

  void passwordChange(String value){
    print(value);
  }

  void confirmPasswordChange(String value){
    print(value);
  }

  void forgotPassword(BuildContext context) {
    context.router.push(const SmoothForgotPassword());
  }

  void haveAccountLink(BuildContext context) {
    context.router.push(const SmoothLogin());
  }

  void onSubmit(BuildContext context) {
    context.router.replace(const SmoothRedirection());
  }
}