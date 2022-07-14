import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smoothTheme/constants/smooth-configs.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_button.dart';

class SmoothLoader extends StatelessWidget {
  final Function() onPressed;
  const SmoothLoader({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SmoothConfigs().init(context);

    return Container(
      width: double.infinity,
      height: SmoothConfigs.screenHeight,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SpinKitCircle(
              color: SmoothColor.primary,
              size: SmoothConfigs.screenWidth! * 0.1,
            ),
          ),
          SmoothButton(title: "Screen that you working on", onPressed: onPressed, plain: true, vertical: 50.0, horizontal: 30.0,),
        ],
      ),
    );
  }
}
