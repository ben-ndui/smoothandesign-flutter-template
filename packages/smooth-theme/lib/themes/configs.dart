import 'package:flutter/material.dart';
import 'package:smoothTheme/model/smooth_search_result_model.dart';

class SmoothConfigs{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;


  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }

  List<SmoothSearchResultModel> searchData(){
    return [
      SmoothSearchResultModel(data: "Patate"),
      SmoothSearchResultModel(data: "Banane"),
      SmoothSearchResultModel(data: "Jus de fuit"),
      SmoothSearchResultModel(data: "Fruits"),
      SmoothSearchResultModel(data: "Légumes"),
      SmoothSearchResultModel(data: "Pâtes"),
    ];
  }
}