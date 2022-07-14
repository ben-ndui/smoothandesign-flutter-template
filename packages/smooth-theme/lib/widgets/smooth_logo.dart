import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/constants/smooth-configs.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_text.dart';

class SmoothLogo extends StatelessWidget {
  final String url;
  final String? title;

  const SmoothLogo({Key? key, required this.url, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SmoothConfigs().init(context);

    if(title != null){
      final res = url.split('.');
      final extension = res[1];
      Widget? img;

      switch (extension) {
        case "svg":
          img = SvgPicture.asset(url,
              width: SmoothConfigs.screenWidth, fit: BoxFit.cover);
          break;
        case "jpg":
          img = Image.asset(url,
              width: SmoothConfigs.screenWidth, fit: BoxFit.cover);
          break;
        default:
          img = SvgPicture.asset(url,
              width: SmoothConfigs.screenWidth, fit: BoxFit.cover);
      }

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          img,
          title != null || title!.isNotEmpty
              ? SmoothText(
                  title: title!,
                  horizontal: 0.0,
                  vertical: 1.0,
                  alignment: TextAlign.center,
                )
              : Container(),
        ],
      );
    }else
      return Container(
        width: SmoothConfigs.screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(child: FaIcon(FontAwesomeIcons.camera), backgroundColor: SmoothColor.grey),
            SmoothText(title: 'Pas de logo définit', horizontal: 1.0, vertical: 3.0, alignment: TextAlign.center, style: TextStyle(fontSize: 12.0),),
          ],
        ),
      );
  }
}
