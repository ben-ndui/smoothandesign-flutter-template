import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_button_link.dart';
import 'package:smoothTheme/widgets/smooth_text.dart';

class SmoothTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPasswordField;
  final bool? isImageOne;
  final double? vSymetric;
  final double? hSymetric;

  const SmoothTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.isPasswordField,
    this.isImageOne,
    this.vSymetric,
    this.hSymetric,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isImageOne != null ? buildImageField() : buildDefault();
  }

  Padding buildDefault() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: hSymetric ?? 16.0, vertical: vSymetric ?? 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          label.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmoothText(title: label, vertical: 5.0, horizontal: 0.0)
                    ],
                  ),
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: isPasswordField,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImageField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmoothText(title: label, vertical: 5.0, horizontal: 0.0)
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
          height: 250.0,
          decoration: BoxDecoration(
            color: SmoothColor.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: SmoothColor.primary.withOpacity(0.5),
                  spreadRadius: 0.0,
                  blurRadius: 0.5)
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FaIcon(FontAwesomeIcons.camera),
              SmoothButtonLink(
                  title: "Choisissez la photo",
                  onPressed: () {
                    //TODO: Make user select picture from gallery
                  })
            ],
          ),
        ),
      ],
    );
  }
}
