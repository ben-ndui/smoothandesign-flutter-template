import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smoothTheme/controllers/smooth_bottom_bar_controller.dart';
import 'package:smoothTheme/model/smooth_menu_item.dart';
import 'package:smoothTheme/themes/smooth_color.dart';

class SmoothBottomBar extends StatefulWidget {
  final List<SmoothMenuItem> bottomItemList;
  const SmoothBottomBar({Key? key, required this.bottomItemList}) : super(key: key);

  @override
  State<SmoothBottomBar> createState() => _SmoothBottomBarState();
}

class _SmoothBottomBarState extends State<SmoothBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SmoothBottomBarController>(
      builder: (context, controller, child) {
        return BottomNavigationBar(
          onTap: (value) => controller.setSelected(value, context),
          type: BottomNavigationBarType.shifting,
          currentIndex: controller.selected,
          selectedItemColor: SmoothColor.red,
          unselectedItemColor: SmoothColor.primary.withOpacity(0.3),
          selectedLabelStyle: const TextStyle(
              color: SmoothColor.red, fontWeight: FontWeight.bold),
          items: widget.bottomItemList.map((e) {
            return BottomNavigationBarItem(
              backgroundColor: SmoothColor.white,
              icon: FaIcon(
                e.icon,
              ),
              label: e.title,
            );
          }).toList(),
        );
      },
    );
  }
}
