import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class AppIcons {
  static const Icon visibility = Icon(Icons.visibility_outlined);
  static Icon user = Icon(
    Icons.person_sharp,
    size: 24.sp,
  );
  static const Icon lock = Icon(Icons.lock);
  static const Icon email = Icon(Icons.email);

  static Icon searchIcon = Icon(
    Icons.search,
    color: AppColors.searchIconColors,
  );

  static Icon notes = Icon(
    Icons.notes,
    color: AppColors.homeScreenIconsColors,
  );

  static Icon filter = Icon(
    Icons.filter_alt_outlined,
    color: AppColors.homeScreenIconsColors,
  );
  static Icon swap_vert = Icon(
    Icons.swap_vert,
    color: AppColors.homeScreenIconsColors,
  );

  static Icon microPhone = Icon(
    Icons.mic_rounded,
    color: AppColors.searchIconColors,
  );
  static Icon arrowForward = Icon(
    Icons.arrow_forward,
    color: AppColors.backgroundColors,
  );
  static Icon accessAlarm = Icon(
    Icons.access_alarm,
    color: AppColors.backgroundColors,
    size: 16.sp,
  );
  static Icon star = Icon(
    Icons.star,
    color: AppColors.starColors,
    size: 14.sp,
  );
  static Icon star_half = Icon(
    Icons.star_half,
    color: AppColors.gray,
    size: 14.sp,
  );
  static Icon dateRange = Icon(
    Icons.date_range,
    color: AppColors.backgroundColors,
    size: 14.sp,
  );
  static Icon arrowForward2 = Icon(
    Icons.arrow_forward_ios_sharp,
    color: AppColors.backColor,
    size: 14.sp,
  );
}
