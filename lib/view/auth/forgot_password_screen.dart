import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_form_field.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import '../../core/common_widget/common_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: AppString.titleForgot,
                style: AppTextStyle.w700(fontSize: 36.sp),
              ),
              CommonText(
                text: AppString.titlePassword,
                style: AppTextStyle.w700(fontSize: 36.sp),
              ),
            ],
          ),
          32.height,
          CommonTextFormField(
            controller: emailController,
            prefixIcon: AppIcons.email,
            hintText: AppString.enterEmail,
          ),
          26.height,
          RichText(
              text: TextSpan(
                  text: "${AppString.compulsory} ",
                  style: AppTextStyle.w400(color: AppColors.compulsoryColors, fontSize: 12.sp),
                  children: [
                TextSpan(
                  text: AppString.weWill,
                  style: AppTextStyle.w400(color: AppColors.hintTextColor, fontSize: 12.sp),
                )
              ])),
          29.height,
          const CommonButton(
            text: AppString.submit,
          )
        ],
      ).paddingOnly(top: 63.h, left: 23.w, right: 23.w),
    );
  }
}
