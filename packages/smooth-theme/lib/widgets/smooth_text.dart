import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/smooth_color.dart';

class SmoothText extends StatelessWidget {
  final String title;
  final FontWeight? weight;
  final TextStyle? style;
  final TextAlign? alignment;
  final double? horizontal;
  final double? vertical;

  const SmoothText({Key? key, required this.title, this.weight, this.style, this.alignment, this.horizontal, this.vertical}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return smoothText();
  }

  Widget smoothText() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal ?? 20.0,
        vertical: vertical ?? 40.0,
      ),
      child: AutoSizeText(
        title,
        textAlign: alignment ?? TextAlign.start,
        style: style ?? TextStyle(
          fontSize: 20.0,
          color: SmoothColor.textPrimary,
        ),
      ),
    );
  }
}
