import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import '../../core/theme/app_colors.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColors,
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.getStartedSubtitleColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: AppIcons.shopping_cart_outlined,
            ),
          ).paddingOnly(right: 15),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 213.h,
            child: Align(
              alignment: Alignment.center,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 213.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16.r),
                        image: DecorationImage(
                            image: AssetImage(
                              AppString.trendingProductsInfo[index]["images"],
                            ),
                            fit: BoxFit.cover)),
                  ).paddingSymmetric(
                    horizontal: 5.w,
                  );
                },
              ),
            ),
          ).paddingSymmetric(vertical: 12.h),
          Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 5,
              effect: ColorTransitionEffect(
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: AppColors.onboardingButtonColor,
              ),
            ),
          ),
          16.height,
          Row(
            children: [
              CommonText(
                text: "Size:",
                style: AppTextStyle.w700(fontSize: 16.sp),
              ),
              CommonText(
                text: " M ",
                style: AppTextStyle.w700(fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: 42.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: AppColors.onboardingButtonColor,
                      borderRadius: BorderRadius.circular(8.r)),
                ).paddingSymmetric(horizontal: 2);
              },
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 16.w),
    );
  }
}
