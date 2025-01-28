import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Icon? prefixIcon;
  final String? Function(String?)? validator;
  final Icon? suffixIcon;
  final Color? fillColor;
  final String? hintText;
  final Color? focusedBorderColors;
  final Color? enableBorderColors;
  final void Function()? onTap;
  const CommonTextFormField(
      {super.key,
      required this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.onTap,
      this.hintText,
      this.focusedBorderColors,
      this.enableBorderColors,
      this.fillColor,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onTap: onTap,
      style: AppTextStyle.w500(
        color: AppColors.hintTextColor,
        fontSize: 12.sp,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.w500(
          color: AppColors.hintTextColor,
          fontSize: 12.sp,
        ),
        filled: true,
        fillColor: fillColor ?? AppColors.fillColor,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
                color: focusedBorderColors ?? AppColors.textFieldBorderColor, width: 1.sp)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
                color: enableBorderColors ?? AppColors.textFieldBorderColor, width: 1.sp)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColors.errorColor, width: 1.sp)),
      ),
    );
  }
}
