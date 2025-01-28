import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_call_to_action_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_product_card.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_search_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_sort_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageCount = 0;
  final TextEditingController searchData = TextEditingController();
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.homeBGColors,
        appBar: const CommonAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CommonSearchBar(
                controller: searchData,
              ).paddingAll(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: AppString.allFeatured,
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
                  )
                ],
              ).paddingSymmetric(horizontal: 21),
              Container(
                  height: 87.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                      )),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: AppString.featuredName.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 8),
                              height: 56.h,
                              width: 56.w,
                              decoration: BoxDecoration(
                                  color: AppColors.gray,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        AppString.featuredImages[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ).paddingSymmetric(horizontal: 10),
                            4.height,
                            CommonText(
                              text: AppString.featuredName[index],
                              style: AppTextStyle.w500(
                                fontSize: 10.sp,
                                color: AppColors.allFeaturedColors,
                              ),
                            ).paddingOnly(left: 8.sp)
                          ],
                        );
                      },
                    ),
                  )).paddingOnly(left: 16, top: 16),
              16.height,
              Stack(
                children: [
                  SizedBox(
                    height: 189.h,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: AppString.homepageImagePageView.length,
                      onPageChanged: (value) {
                        setState(() {
                          pageCount = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 189.h,
                              width: 343.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppString.homepageImagePageView[index]["images"],
                                  ),
                                ),
                              ),
                            ).paddingSymmetric(horizontal: 3.h),
                          ],
                        );
                      },
                    ),
                  ).paddingSymmetric(horizontal: 16.h),
                  Positioned(
                      left: 30,
                      top: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: AppString.homepageImagePageView[pageCount]["discount"],
                            style: AppTextStyle.w700(
                                fontSize: 20.sp, color: AppColors.backgroundColors),
                          ),
                          8.height,
                          CommonText(
                            text: AppString.homepageImagePageView[pageCount]["title"],
                            style: AppTextStyle.w400(
                                fontSize: 12.sp, color: AppColors.backgroundColors),
                          ),
                          CommonText(
                            text: AppString.homepageImagePageView[pageCount]["color"],
                            style: AppTextStyle.w400(
                                fontSize: 12.sp, color: AppColors.backgroundColors),
                          ),
                          12.height,
                          const CommonBorderButton(
                            text: "Shop Now",
                          )
                        ],
                      ))
                ],
              ),
              16.height,
              Center(
                child: SmoothPageIndicator(
                    controller: _pageController,
                    count: AppString.onboardingImage.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                        activeDotColor: AppColors.homepageDotColors, dotWidth: 10, dotHeight: 10)),
              ),
              16.height,
              CommonCallToActionButton(
                title: AppString.dealOfTheDay,
                icon: AppIcons.accessAlarm,
                subtitle: AppString.remaining,
                buttonText: AppString.viewAll,
                bgColor: AppColors.dealOfTheDay,
              ),
              SizedBox(
                height: 241.h,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CommonProductCard(
                      productImages: AppString.productInfo.values.elementAt(index)["images"],
                      description: AppString.productInfo.values.elementAt(index)["description"],
                      title: AppString.productInfo.values.elementAt(index)["title"],
                      discount: AppString.productInfo.values.elementAt(index)["discount"],
                      countItems: AppString.productInfo.values.elementAt(index)["itemCount"],
                      price: AppString.productInfo.values.elementAt(index)["price"],
                      discountPrice: AppString.productInfo.values.elementAt(index)["discountPrice"],
                    );
                  },
                ),
              ).paddingSymmetric(horizontal: 5.w),
              Container(
                height: 84.h,
                width: 343.w,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColors,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage(AppImagesKey.specialOffer),
                      width: 75.w,
                      height: 60.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonText(
                              text: AppString.specialOffer,
                              style: AppTextStyle.w500(color: AppColors.backColor, fontSize: 16.sp),
                            ),
                            8.width,
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      AppImagesKey.offerEmojis,
                                    ),
                                  ),
                                  border: Border.all(color: AppColors.gray)),
                            )
                          ],
                        ),
                        CommonText(
                          textAlign: TextAlign.start,
                          text: AppString.offerTitle,
                          style: AppTextStyle.w300(fontSize: 12.sp),
                        )
                      ],
                    )
                  ],
                ),
              ).paddingSymmetric(vertical: 16.h, horizontal: 16.w),
              Container(
                height: 172.h,
                width: 343.w,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColors,
                    image: const DecorationImage(
                        image: AssetImage(
                          AppImagesKey.flatAndHeelsProduct,
                        ),
                        fit: BoxFit.cover)),
              ).paddingSymmetric(
                horizontal: 16.w,
              ),
              CommonCallToActionButton(
                title: AppString.trendingProducts,
                icon: AppIcons.dateRange,
                subtitle: AppString.lastDate,
                buttonText: AppString.viewAll,
                bgColor: AppColors.callToActionButtonColors,
              ).paddingSymmetric(vertical: 16.w),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppString.newProduct.length,
                  itemBuilder: (context, index) {
                    return CommonProductCard(
                      productImages: AppString.newProduct[index]["images"],
                      discountPrice: AppString.newProduct[index]["discountPrice"],
                      price: AppString.newProduct[index]["price"],
                      rating: const SizedBox(),
                      title: AppString.newProduct[index]["title"],
                      discount: AppString.newProduct[index]["discount"],
                    );
                  },
                ),
              ).paddingSymmetric(horizontal: 5.w),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
                child: Container(
                  height: 270.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColors,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: const AssetImage(
                          AppImagesKey.hotSummerSell,
                        ),
                        height: 200.h,
                        width: 343.w,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                textAlign: TextAlign.start,
                                text: AppString.newArrivals,
                                style: AppTextStyle.w600(
                                  fontSize: 20.sp,
                                  color: AppColors.backColor,
                                ),
                              ),
                              CommonText(
                                textAlign: TextAlign.start,
                                text: AppString.summerCollections,
                                style: AppTextStyle.w500(
                                  fontSize: 16.sp,
                                  color: AppColors.backColor,
                                ),
                              ),
                            ],
                          ),
                          CommonBorderButton(
                            bgColor: AppColors.onboardingButtonColor,
                            text: AppString.viewAll,
                          ).paddingOnly(top: 20.h)
                        ],
                      ),
                    ],
                  ),
                ),
              ).paddingSymmetric(horizontal: 16.w),
              Container(
                height: 390.h,
                width: 383.w,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColors,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: AppString.sponserd,
                      style: AppTextStyle.w500(fontSize: 20.sp),
                    ).paddingOnly(left: 32.w, top: 12.h),
                    Container(
                      height: 292.h,
                      width: 351.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                            bottomLeft: Radius.circular(8.r),
                          ),
                          image: const DecorationImage(
                              image: AssetImage(
                                AppImagesKey.offerShoes,
                              ),
                              fit: BoxFit.cover)),
                    ).paddingOnly(left: 32.w, top: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: AppString.upTo,
                          style: AppTextStyle.w700(fontSize: 16.sp, color: AppColors.backColor),
                        ).paddingOnly(left: 32.w),
                        AppIcons.arrowForward2.paddingOnly(right: 15.w),
                      ],
                    ).paddingOnly(top: 12.h)
                  ],
                ),
              ),
              16.height,
            ],
          ),
        ));
  }
}
