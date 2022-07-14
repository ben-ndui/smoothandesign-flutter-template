import 'package:flutter/material.dart';

class SmoothBottomBarController extends ChangeNotifier{
  int selected = 0;

  setSelected(int newValue, BuildContext context){
    selected = newValue;
    notifyListeners();
    openDrawer(context);
  }

  void openDrawer(BuildContext context) {
    selected == 4 ? Scaffold.of(context).openDrawer() : null;
  }


}