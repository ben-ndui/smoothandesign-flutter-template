import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/constants/smooth_color.dart';

class SmoothAppBar {
  final String title;
  final BuildContext context;
  final bool? showBackButton;

  SmoothAppBar({
    required this.title,
    required this.context,
    this.showBackButton,
  });

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: SmoothColor.red,
      title: AutoSizeText(title),
      leading: showBackButton != null && showBackButton == true
          ? IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.chevronLeft,
                size: 20.0,
              ),
              onPressed: () {
                context.router.pop();
              },
            )
          : null,
    );
  }
}
