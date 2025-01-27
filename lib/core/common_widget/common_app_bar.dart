import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';

import '../constant/app_icons.dart';
import '../theme/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.homeBGColors,
      leading: Container(
        decoration: BoxDecoration(
          color: AppColors.getStartedSubtitleColor,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: AppIcons.notes,
        ),
      ).paddingOnly(left: 15),
      leadingWidth: 60,
      title: Align(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage(
            AppImagesKey.appLogo,
          ),
          height: 31.03.h,
          width: 111.78.w,
        ),
      ),
      actions: [
        Container(
          height: 40.h,
          width: 40.h,
          decoration: const BoxDecoration(
            color: Colors.black54,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                AppImagesKey.profileImages,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ).paddingOnly(
          right: 15,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
