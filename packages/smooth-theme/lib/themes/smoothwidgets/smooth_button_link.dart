import 'package:flutter/material.dart';
import 'package:smoothTheme/themes/smooth_color.dart';

class SmoothButtonLink extends StatelessWidget {
  final String title;
  final Color? color;
  final double? vertical;
  final Function() onPressed;

  const SmoothButtonLink({Key? key, required this.title, this.color, this.vertical, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return smoothButtonLink();
  }

  Padding smoothButtonLink() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                primary: SmoothColor.accent,
              ),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
