import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColors,
        body: Stack(
          children: [
            Image(
              image: const AssetImage(AppImagesKey.getStarted),
              height: context.height,
              fit: BoxFit.cover,
            ),
            Container(
              height: context.height,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black54,
                    AppColors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonText(
                    text: AppString.youWant,
                    style: AppTextStyle.w600(fontSize: 34.sp, color: AppColors.backgroundColors),
                  ),
                  14.height,
                  CommonText(
                    text: AppString.findIt,
                    style: AppTextStyle.w400(
                        fontSize: 14.sp, color: AppColors.getStartedSubtitleColor),
                  ),
                  44.height,
                  CommonButton(
                    onTap: () {
                      Get.offAllNamed(
                        RoutesName.bottomNavigationBar,
                      );
                    },
                    text: AppString.getStarted,
                  ),
                  34.height,
                ],
              ),
            ),
          ],
        ));
  }
}
