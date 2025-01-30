import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  void itemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppString.screen[_selectedIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none, // Allows the cart button to overflow
        children: [
          BottomNavigationBar(
            selectedFontSize: 12.sp,
            selectedLabelStyle: AppTextStyle.w700(
              fontSize: 12.sp,
              color: AppColors.selectedItemColor,
            ),
            unselectedLabelStyle: AppTextStyle.w700(
              fontSize: 12.sp,
              color: AppColors.backColor,
            ),
            selectedItemColor: AppColors.selectedItemColor,
            selectedIconTheme: IconThemeData(
              color: AppColors.selectedItemColor,
              size: 23.sp,
            ),
            onTap: (value) {
              itemSelected(value);
            },
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: AppString.home,
                icon: Icon(
                  AppIcons.home,
                  color: _selectedIndex == 0 ? AppColors.selectedItemColor : AppColors.backColor,
                ),
              ),
              BottomNavigationBarItem(
                label: AppString.search,
                icon: Icon(
                  AppIcons.search,
                  color: _selectedIndex == 1 ? AppColors.selectedItemColor : AppColors.backColor,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(null),
              ),
              BottomNavigationBarItem(
                label: AppString.wishList,
                icon: Icon(
                  AppIcons.favorite,
                  color: _selectedIndex == 3 ? AppColors.selectedItemColor : AppColors.backColor,
                ),
              ),
              BottomNavigationBarItem(
                label: AppString.profile,
                icon: Icon(
                  AppIcons.profile,
                  color: _selectedIndex == 4 ? AppColors.selectedItemColor : AppColors.backColor,
                ),
              ),
            ],
          ),
          Positioned(
            top: -25, // Adjusts the elevation of the button
            left: 150,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  itemSelected(2);
                }); // Set the index for the cart
              },
              child: Container(
                width: 56.w,
                height: 56.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _selectedIndex == 2
                        ? AppColors.selectedItemColor
                        : AppColors.backgroundColors,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 19,
                        // offset: const Offset(9, 0),
                      )
                    ]),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 28.sp,
                  color: _selectedIndex == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
