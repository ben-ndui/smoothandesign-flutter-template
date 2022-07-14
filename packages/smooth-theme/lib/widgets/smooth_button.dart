import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/smooth_color.dart';

class SmoothButton extends StatelessWidget {
  final String title;
  final Color? color;
  final double? vertical;
  final Function() onPressed;
  final bool? plain;

  const SmoothButton({Key? key, required this.title, this.color, this.vertical, required this.onPressed, this.plain}) : super(key: key);

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
                backgroundColor: plain != null && plain == true ? SmoothColor.danger : SmoothColor.transparent,
                primary: plain != null && plain == true ? SmoothColor.white : SmoothColor.accent,
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
