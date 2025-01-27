import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_auth_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_form_field.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: AppString.welcome,
                      style: AppTextStyle.w700(fontSize: 36.sp),
                    ),
                    CommonText(
                      text: AppString.back,
                      style: AppTextStyle.w700(fontSize: 36.sp),
                    ),
                  ],
                ),
                36.height,
                Column(
                  children: [
                    CommonTextFormField(
                      hintText: AppString.usernameOrEmail,
                      controller: usernameController,
                      prefixIcon: AppIcons.user,
                    ),
                    31.height,
                    CommonTextFormField(
                      hintText: AppString.password,
                      suffixIcon: AppIcons.visibility,
                      controller: passwordController,
                      prefixIcon: AppIcons.lock,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      widthFactor: 0.9,
                      child: CommonTextButton(
                        fixedSize: Size(155, 50),
                        onPressed: () {
                          Get.toNamed(RoutesName.forgotPasswordScreen);
                        },
                        text: AppString.forgotPassword,
                        textStyle: AppTextStyle.w400(
                            color: AppColors.onboardingButtonColor, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
                52.height,
                Center(
                  child: CommonButton(
                    onTap: () {
                      Get.toNamed(RoutesName.getStartedScreen);
                    },
                    text: AppString.login,
                  ),
                ),
                75.height,
                Column(
                  children: [
                    CommonText(
                      text: AppString.orContinueWith,
                      style: AppTextStyle.w500(
                        fontSize: 12.sp,
                      ),
                    ),
                    20.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CommonAuthButton(
                          Img: AppImagesKey.google,
                        ),
                        10.width,
                        const CommonAuthButton(
                          Img: AppImagesKey.apple,
                        ),
                        10.width,
                        const CommonAuthButton(
                          Img: AppImagesKey.facebook,
                        ),
                      ],
                    ),
                    28.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          text: AppString.createAnAccount,
                          style: AppTextStyle.w400(fontSize: 14.sp),
                        ),
                        CommonTextButton(
                          onPressed: () {
                            Get.toNamed(
                              RoutesName.signUpScreen,
                            );
                          },
                          text: AppString.signUp,
                          TextDecoration: TextDecoration.underline,
                          fontsize: 14.sp,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 32, vertical: 29),
    );
  }
}
