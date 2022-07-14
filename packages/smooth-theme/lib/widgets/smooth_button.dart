import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/smooth-configs.dart';
import 'package:smoothTheme/constants/smooth_color.dart';

class SmoothButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? bgColor;
  final double? vertical;
  final double? horizontal;
  final void Function() onPressed;
  final void Function(bool)? onHover;
  final bool? plain;
  final double? size;
  final double? radius;
  final Alignment? alignment;

  const SmoothButton({
    Key? key,
    required this.title,
    this.color,
    this.vertical,
    this.horizontal,
    required this.onPressed,
    this.plain,
    this.size,
    this.radius,
    this.alignment, this.onHover, this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return smoothButtonLink();
  }

  Widget smoothButtonLink() {
    bool isHover = false;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal ?? 18.0, vertical: vertical ?? 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              onHover: onHover,
              style: TextButton.styleFrom(
                alignment: alignment ?? Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 100.0),
                ),
                backgroundColor: plain != null && plain == true
                    ? SmoothColor.danger
                    : bgColor != null ? bgColor : SmoothColor.transparent,
                primary: plain != null && plain == true
                    ? SmoothColor.white
                    : color != null ? color! : SmoothColor.accent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                    fontSize: size ?? SmoothConfigs.screenWidth! * 0.04,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
