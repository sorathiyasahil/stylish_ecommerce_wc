import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/Common_dialog.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class ContinueButtonWidget extends StatefulWidget {
  const ContinueButtonWidget({super.key});

  @override
  State<ContinueButtonWidget> createState() => _ContinueButtonWidgetState();
}

class _ContinueButtonWidgetState extends State<ContinueButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CommonButton(
      onTap: () {
        CommonDialog.showCustomDialog(
            context: context,
            imageAsset: AppImagesKey.success,
            message: AppString.paymentDoneSuccessfully);
      },
      height: 59.h,
      widget: 295.w,
      radius: 8,
      text: AppString.continueText,
      style: AppTextStyle.w700(fontSize: 22.sp, color: AppColors.backgroundColors),
    ));
  }
}
