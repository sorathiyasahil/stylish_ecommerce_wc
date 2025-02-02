import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonSimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leading;
  final String? title;
  final IconData? action;
  final Color? borderColor;
  final void Function()? actionOnPressed;
  final void Function()? leadingOnPressed;
  const CommonSimpleAppBar(
      {super.key,
      this.leading,
      this.title,
      this.action,
      this.borderColor,
      this.actionOnPressed,
      this.leadingOnPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: Border.all(color: borderColor ?? AppColors.transparent),
      backgroundColor: AppColors.homeBGColors,
      leading: IconButton(onPressed: leadingOnPressed, icon: Icon(leading ?? Icons.add)),
      centerTitle: true,
      leadingWidth: 60,
      title: CommonText(
        text: title ?? "",
        style: AppTextStyle.w700(
          fontSize: 16.sp,
          color: AppColors.backColor,
        ),
      ),
      actions: [
        IconButton(
            onPressed: actionOnPressed, icon: Icon(action).paddingSymmetric(horizontal: 10.h))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
