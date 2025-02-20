import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_auth_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_form_field.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_validation.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: Form(
        key: _formKey,
        child: Column(
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
                        text: AppString.createAn,
                        style: AppTextStyle.w700(fontSize: 36.sp),
                      ),
                      CommonText(
                        text: AppString.account,
                        style: AppTextStyle.w700(
                          fontSize: 36.sp,
                        ),
                      ),
                    ],
                  ),
                  36.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.validateEmailOrUsername(p0),
                    hintText: AppString.usernameOrEmail,
                    controller: usernameController,
                    prefixIcon: AppIcons.user,
                  ),
                  31.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.validatePassword(p0),
                    hintText: AppString.password,
                    suffixIcon: AppIcons.visibility,
                    controller: passwordController,
                    prefixIcon: AppIcons.lock,
                  ),
                  31.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    hintText: AppString.confirmPassword,
                    suffixIcon: AppIcons.visibility,
                    controller: confirmPasswordController,
                    prefixIcon: AppIcons.lock,
                  ),
                  19.height,
                  RichText(
                    text: TextSpan(
                        text: AppString.byClicking,
                        style: AppTextStyle.w400(fontSize: 12.sp, color: AppColors.hintTextColor),
                        children: [
                          TextSpan(
                              text: " ${AppString.register} ",
                              style: AppTextStyle.w400(
                                  color: AppColors.registerColors, fontSize: 12.sp)),
                          TextSpan(
                              text: AppString.buttonYouAgree,
                              style: AppTextStyle.w400(
                                  fontSize: 12.sp, color: AppColors.hintTextColor)),
                        ]),
                  ),
                  38.height,
                  Center(
                    child: CommonButton(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (passwordController.text == confirmPasswordController.text) {
                            Get.toNamed(RoutesName.signInScreen, parameters: {
                              "username": usernameController.text,
                              "password": passwordController.text
                            });
                            usernameController.clear();
                            passwordController.clear();
                            confirmPasswordController.clear();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content:
                                    CommonText(text: "Password and confirm password not Same")));
                          }
                        }
                      },
                      text: AppString.createAccount,
                    ),
                  ),
                  40.height,
                  Center(
                    child: Column(
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
                              img: AppImagesKey.google,
                            ),
                            10.width,
                            const CommonAuthButton(
                              img: AppImagesKey.apple,
                            ),
                            10.width,
                            const CommonAuthButton(
                              img: AppImagesKey.facebook,
                            ),
                          ],
                        ),
                        28.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonText(
                              text: AppString.iAlreadyHaveAnAccount,
                              style: AppTextStyle.w400(fontSize: 14.sp),
                            ),
                            CommonTextButton(
                              fixedSize: const Size(70, 40),
                              onPressed: () => Get.toNamed(
                                RoutesName.signInScreen,
                              ),
                              text: AppString.login,
                              textDecoration: TextDecoration.underline,
                              fontsize: 14.sp,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ).paddingOnly(
          right: 32.w,
          left: 32.w,
          top: 19.h,
        ),
      ),
    );
  }

  @override
  void dispose() {
    confirmPasswordController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
