import 'package:flutter/material.dart';

import 'constants/smooth-configs.dart';
import 'constants/smooth_color.dart';
import 'widgets/smooth_button.dart';
import 'widgets/smooth_text.dart';
import 'widgets/smooth_textField.dart';


SizedBox smoothSpacer({double? vertical}) => SizedBox(height: vertical ?? SmoothConfigs.screenWidth! * 0.25,);
