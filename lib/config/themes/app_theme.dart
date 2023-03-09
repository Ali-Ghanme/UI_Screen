import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: AppColors.mainColor,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 30, color: AppColors.textColor),
        headline2: TextStyle(fontSize: 15, color: AppColors.textColor),
        headline3: TextStyle(fontSize: 18, color: AppColors.textColor, fontWeight: FontWeight.normal),
        subtitle1: TextStyle(fontSize: 15, color: AppColors.grayColor, fontWeight: FontWeight.normal),
        subtitle2: TextStyle(fontSize: 15, color: AppColors.mainColor, fontWeight: FontWeight.bold),

        button: TextStyle(color: AppColors.buttonColor),
      ),
      fontFamily: 'Cairo',
      scaffoldBackgroundColor: AppColors.background);
}