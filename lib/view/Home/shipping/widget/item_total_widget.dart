import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class ItemTotalWidget extends StatefulWidget {
  const ItemTotalWidget({super.key});

  @override
  State<ItemTotalWidget> createState() => _ItemTotalWidgetState();
}

class _ItemTotalWidgetState extends State<ItemTotalWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              textAlign: TextAlign.start,
              text: AppString.order,
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.gray,
              ),
            ),
            CommonText(
              textAlign: TextAlign.start,
              text: "${AppString.rupeesLogo} 7000",
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.gray,
              ),
            ),
          ],
        ),
        10.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              textAlign: TextAlign.start,
              text: AppString.shipping,
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.gray,
              ),
            ),
            CommonText(
              textAlign: TextAlign.start,
              text: "${AppString.rupeesLogo} 30",
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.gray,
              ),
            ),
          ],
        ),
        10.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              textAlign: TextAlign.start,
              text: AppString.total,
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.backColor,
              ),
            ),
            CommonText(
              textAlign: TextAlign.start,
              text: "${AppString.rupeesLogo} 7030",
              style: AppTextStyle.w600(
                fontSize: 18.sp,
                color: AppColors.backColor,
              ),
            ),
          ],
        ),
      ],
    ).paddingOnly(right: 22.w, left: 42.w);
  }
}
