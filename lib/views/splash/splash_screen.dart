import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_button.dart';
import 'package:smoothTheme/widgets/smooth_logo.dart';
import 'package:smoothstarter/router/router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashBody(context),
    );
  }

  Widget splashBody(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: const SmoothLogo(url: "Entrer")),
          SmoothButton(title: "Entrer", color: SmoothColor.white, plain: true, onPressed: (){
            context.router.push(const SmoothLogin());
          }),
        ],
      ),
    );
  }
}
