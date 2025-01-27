import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_button.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int pageCount = 1;

  void _goToPage(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColors,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: "$pageCount",
                    style: AppTextStyle.w600(
                      fontSize: 18.sp,
                      color: AppColors.backColor,
                    ),
                    children: [
                      TextSpan(
                        text: "/3",
                        style: AppTextStyle.w600(
                          fontSize: 18.sp,
                          color: AppColors.gray,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => _goToPage(2), // Navigate to the last page
                  child: CommonText(
                    text: "Skip",
                    style: AppTextStyle.w600(
                      fontSize: 18.sp,
                      color: AppColors.backColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 350.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: AppString.onboardingImage.length,
                onPageChanged: (value) {
                  setState(() {
                    pageCount = value + 1;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 350.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppString.onboardingImage[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            Column(
              children: [
                CommonText(
                  text: AppString.onboardingTitle[pageCount - 1],
                  style: AppTextStyle.w800(
                    fontSize: 24.sp,
                    color: AppColors.backColor,
                  ),
                ),
                10.height,
                CommonText(
                  text: AppString.onboardingSubTitle1[pageCount - 1],
                  style: AppTextStyle.w600(
                    fontSize: 13.5.sp,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
            // Bottom Row: Prev, Indicator, Next/Get Started
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Prev Button
                TextButton(
                  onPressed: pageCount > 1 ? () => _goToPage(pageCount - 2) : null,
                  child: CommonText(
                    text: "Prev",
                    style: AppTextStyle.w600(
                      fontSize: 18.sp,
                      color: pageCount > 1 ? AppColors.gray : AppColors.transparent,
                    ),
                  ),
                ),
                // SmoothPageIndicator
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: AppString.onboardingImage.length,
                    axisDirection: Axis.horizontal,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.indicatorColor,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                ),
                // Next/Get Started Button
                CommonTextButton(
                  onPressed: pageCount < 3
                      ? () => _goToPage(pageCount)
                      : () {
                          Get.offAllNamed(RoutesName.signUpScreen);
                        },
                  text: pageCount < 3 ? "Next" : "Get Started",
                  fontsize: pageCount < 3 ? 18.sp : 13.sp,
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 15, vertical: 22),
      ),
    );
  }
}
