import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

String _font_regular = "Montserrat";
String _font_bold = "Montserrat_bold";

class AppTextStyle {
  static TextStyle w300({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? AppColors.backColor,
      fontSize: fontSize ?? 10.sp,
      fontWeight: FontWeight.w300,
      fontFamily: _font_regular,
      decoration: textDecoration,
    );
  }

  static TextStyle w400(
      {Color? decorationColor, TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? AppColors.backColor,
      fontSize: fontSize ?? 10.sp,
      fontWeight: FontWeight.w400,
      fontFamily: _font_regular,
      decoration: textDecoration,
      decorationColor: decorationColor ?? AppColors.onboardingButtonColor,
    );
  }

  static TextStyle w500({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? AppColors.backColor,
      fontSize: fontSize ?? 10.sp,
      fontWeight: FontWeight.w500,
      fontFamily: _font_regular,
      decoration: textDecoration,
    );
  }

  static TextStyle w600({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
        color: color ?? AppColors.backColor,
        fontSize: fontSize ?? 10.sp,
        fontWeight: FontWeight.w600,
        decoration: textDecoration,
        decorationColor: AppColors.onboardingButtonColor,
        fontFamily: _font_regular);
  }

  static TextStyle w700({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
        color: color ?? AppColors.backColor,
        fontSize: fontSize ?? 10.sp,
        fontWeight: FontWeight.w700,
        decoration: textDecoration,
        fontFamily: _font_bold);
  }

  static TextStyle w800({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
      color: color ?? AppColors.backColor,
      fontSize: fontSize ?? 10.sp,
      fontWeight: FontWeight.w800,
      decoration: textDecoration,
      fontFamily: _font_bold,
    );
  }

  static TextStyle bold({TextDecoration? textDecoration, Color? color, double? fontSize}) {
    return TextStyle(
        color: color ?? AppColors.backColor,
        fontSize: fontSize ?? 10.sp,
        fontWeight: FontWeight.bold,
        decoration: textDecoration,
        fontFamily: _font_bold);
  }
}
