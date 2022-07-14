import 'package:flutter/material.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_text.dart';

class SmoothDefaultButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Function() onPressed;
  final bool? withBorder;
  final double? verticalAlign;
  final double? horizontalAlign;

  const SmoothDefaultButton({
    Key? key,
    required this.title,
    this.color,
    required this.onPressed,
    this.withBorder,
    this.verticalAlign,
    this.horizontalAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Padding smoothButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalAlign ?? 16.0, vertical: verticalAlign ?? 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                side: withBorder != null && withBorder == true
                    ? const BorderSide(color: SmoothColor.primary, width: 0.5)
                    : BorderSide.none,
                backgroundColor: withBorder != null && withBorder == true
                    ? SmoothColor.transparent
                    : SmoothColor.red,
              ),
              child: SmoothText(
                  title: title.toUpperCase(), style: TextStyle(color: color), vertical: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
