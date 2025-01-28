import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonSnackBar {
  static success(String? title, String? message) {
    Get.snackbar(title.toString(), message.toString(),
        duration: const Duration(seconds: 5),
        colorText: AppColors.backgroundColors,
        backgroundColor: AppColors.successColor);

    return null;
  }

  static error(String? title, String? message) {
    Get.snackbar(title.toString(), message.toString(),
        duration: const Duration(seconds: 3),
        colorText: AppColors.backgroundColors,
        backgroundColor: AppColors.errorColor);
    return null;
  }
}
