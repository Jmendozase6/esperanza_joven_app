import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young_pregnant_app/config/theme/app_colors.dart';

class TextStylesUtils {
  static TextStyle titleStyle({Color? color}) => TextStyle(
        color: color ?? AppColors.backgroundColor,
        fontSize: 16.sp,
      );

  static TextStyle titleItalicStyle({Color? color}) => TextStyle(
        color: color ?? AppColors.backgroundColor,
        fontSize: 14.sp,
        fontStyle: FontStyle.italic,
      );
  static TextStyle normalStyle({Color? color}) => TextStyle(
        color: color ?? AppColors.backgroundColor,
        fontSize: 13.sp,
      );
  static TextStyle littleStyle({Color? color}) => TextStyle(
        color: color ?? AppColors.backgroundColor,
        fontSize: 12.sp,
      );
}
