import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text_form_field.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_validation.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import '../../core/constant/app_icons.dart';
import '../../core/constant/app_text_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.homeBGColors,
        appBar: AppBar(
          // shape: Border(bottom: BorderSide(color: AppColors.appBarBorderColor, width: 1.w)),
          backgroundColor: AppColors.profileBGColor,
          leading: AppIcons.arrowBackIosNew,
          centerTitle: true,
          title: CommonText(
            text: AppString.profile,
            style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 16.sp),
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 98.h,
                          width: 103.w,
                          decoration: BoxDecoration(
                            color: AppColors.backColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(AppImagesKey.profileImages)),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 105,
                        top: 62,
                        child: Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: AppColors.blur,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.homeBGColors,
                              width: 3.w,
                            ),
                          ),
                          child: Icon(
                            Icons.edit_outlined,
                            color: AppColors.backgroundColors,
                            size: 18.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                  28.height,
                  CommonText(
                    text: AppString.personalDetails,
                    style: AppTextStyle.w600(fontSize: 18.sp),
                  ),
                  10.height,
                  CommonText(
                    text: AppString.emailAddress,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: emailController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  20.height,
                  CommonText(
                    text: AppString.password,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: passwordController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  14.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonText(
                        text: "Change password",
                        style: AppTextStyle.w600(
                            fontSize: 12.sp,
                            textDecoration: TextDecoration.underline,
                            color: AppColors.onboardingButtonColor),
                      ),
                    ],
                  ),
                  20.height,
                  Divider(),
                  20.height,
                  CommonText(
                    text: "Business Address Details",
                    style: AppTextStyle.w600(
                      fontSize: 16.sp,
                    ),
                  ),
                  10.height,
                  CommonText(
                    text: AppString.pinCode,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    keyboardType: TextInputType.number,
                    controller: pinCodeController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  10.height,
                  CommonText(
                    text: AppString.address,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: addressController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  10.height,
                  CommonText(
                    text: AppString.city,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: cityController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  10.height,
                  CommonText(
                    text: AppString.state,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: stateController,
                    fillColor: AppColors.profileBGColor,
                    suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  ),
                  15.height,
                  CommonText(
                    text: AppString.country,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: countryController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  20.height,
                  Divider(),
                  20.height,
                  CommonText(
                    text: "Bank Account Details",
                    style: AppTextStyle.w600(
                      fontSize: 16.sp,
                    ),
                  ),
                  10.height,
                  CommonText(
                    text: AppString.bankAccountNumber,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    keyboardType: TextInputType.number,
                    controller: accountController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  10.height,
                  CommonText(
                    text: AppString.accountHoldersName,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: nameController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  10.height,
                  CommonText(
                    text: AppString.iFSCCode,
                    style: AppTextStyle.w400(fontSize: 12.sp),
                  ),
                  15.height,
                  CommonTextFormField(
                    validator: (p0) => Validation.emptyValidation(p0),
                    controller: codeController,
                    fillColor: AppColors.profileBGColor,
                  ),
                  34.height,
                  CommonButton(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: AppColors.priceColors,
                            child: Container(
                              height: 210.h,
                              width: 331.w,
                              decoration: BoxDecoration(
                                color: AppColors.backgroundColors,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      AppImagesKey.success,
                                    ),
                                    height: 150,
                                    width: 150,
                                  ),
                                  CommonText(
                                    text: AppString.profileCreateSuccessfully,
                                    style: AppTextStyle.w700(fontSize: 14.sp),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    text: AppString.save,
                  ),
                  57.height,
                ],
              ).paddingSymmetric(horizontal: 20.w),
            ],
          ),
        ));
  }
}
