import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_search_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_sort_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_trending_product_screen.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBGColors,
      appBar: const CommonAppBar(),
      body: Column(
        children: [
          CommonSearchBar(controller: _searchController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "${AppString.trendingProductsInfo.length} ${AppString.items}",
                style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 18.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonSortButton(
                    text: AppString.sort,
                    icon: AppIcons.swap_vert,
                  ),
                  10.width,
                  CommonSortButton(
                    icon: AppIcons.filter,
                    text: AppString.filter,
                  )
                ],
              ).paddingSymmetric(vertical: 16.h),
            ],
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              itemCount: AppString.trendingProductsInfo.length,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              itemBuilder: (context, index) {
                var product = AppString.trendingProductsInfo[index];
                return CommonTrendingProductScreen(
                  onTap: () {
                    Get.toNamed(RoutesName.shopScreen);
                  },
                  imagesIndex: index,
                  productImages: product["images"],
                  title: product["title"],
                  description: product["description"],
                  discountPrice: product["discountPrice"],
                  countItems: product["review"],
                );
              },
              staggeredTileBuilder: (index) {
                int value = index + 1;
                return StaggeredTile.count(1, value.isEven ? 1.55 : 1.85);
              },
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}
