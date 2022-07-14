import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/constants/smooth-configs.dart';
import 'package:smoothTheme/constants/smooth_color.dart';
import 'package:smoothTheme/widgets/smooth_button.dart';
import 'package:smoothTheme/widgets/smooth_text.dart';

class SmoothTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPasswordField;
  final bool? isImageOne;
  final double? vSymetric;
  final double? hSymetric;
  final TextEditingController? controller;
  final Function(String)? onChange;

  const SmoothTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.isPasswordField,
    this.isImageOne,
    this.vSymetric,
    this.hSymetric, this.controller, this.onChange,
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
                      SmoothText(title: label, vertical: 5.0, horizontal: 20.0, style: TextStyle(fontWeight: FontWeight.normal),)
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
                  controller: controller,
                  onChanged: onChange,
                  obscureText: isPasswordField,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
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
              SmoothButton(
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
