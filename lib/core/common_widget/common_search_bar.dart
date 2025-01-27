import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_form_field.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CommonSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 50.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 9,
          // offset: const Offset(9, 0),
        )
      ]),
      child: CommonTextFormField(
        fillColor: AppColors.backgroundColors,
        controller: controller,
        enableBorderColors: AppColors.transparent,
        focusedBorderColors: AppColors.transparent,
        prefixIcon: AppIcons.searchIcon,
        hintText: AppString.searchAnyProduct,
        suffixIcon: AppIcons.microPhone,
      ),
    );
  }
}
