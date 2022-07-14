import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/themes/smooth_color.dart';

class SmoothTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onPressed;
  final FaIcon? leading;
  final bool? hideTrailing;
  final Color? titleColor;
  final double? titleSize;
  final Color? subtitleColor;
  final double? subtitleSize;

  const SmoothTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    this.leading,
    this.hideTrailing,
    this.titleColor,
    this.titleSize,
    this.subtitleColor,
    this.subtitleSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildListTile();
  }

  ListTile buildListTile() {
    return ListTile(
      leading: leading,
      onTap: onPressed,
      onLongPress: onPressed,
      title: Text(
        title,
        style: TextStyle(
          color: titleColor ?? SmoothColor.primary.withOpacity(0.5),
          fontSize: titleSize ?? 14.0,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: subtitleSize ?? 18.0,
          color: subtitleColor ?? SmoothColor.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: hideTrailing != null && hideTrailing == true
          ? null
          : IconButton(
              onPressed: onPressed,
              icon: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 15.0,
              ),
            ),
    );
  }
}
