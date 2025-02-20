import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/view/Home/product_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/bottom_navigation_bar_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/get_started_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/home_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/check_out_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/profile_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/shipping/shipping_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/shop_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/shopping_bag_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/wish_list_screen.dart';
import 'package:stylish_ecommerce_wc/view/auth/forgot_password_screen.dart';
import 'package:stylish_ecommerce_wc/view/auth/onboarding_screen.dart';
import 'package:stylish_ecommerce_wc/view/auth/sign_in_screen.dart';
import 'package:stylish_ecommerce_wc/view/auth/sign_up_screen.dart';
import 'package:stylish_ecommerce_wc/view/auth/splash_screen.dart';
import 'package:stylish_ecommerce_wc/view/home/google%20map/google_map_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutesName.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: RoutesName.signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: RoutesName.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: RoutesName.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: RoutesName.getStartedScreen,
      page: () => const GetStartedScreen(),
    ),
    GetPage(
      name: RoutesName.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RoutesName.bottomNavigationBar,
      page: () => const BottomNavigationBarScreen(),
    ),
    GetPage(
      name: RoutesName.checkOutScreen,
      page: () => CheckOutScreen(),
    ),
    GetPage(
      name: RoutesName.productScreen,
      page: () => const ProductScreen(),
    ),
    GetPage(
      name: RoutesName.profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: RoutesName.wishListScreen,
      page: () => const WishListScreen(),
    ),
    GetPage(
      name: RoutesName.shoppingBeg,
      page: () => ShoppingBagScreen(
        productData: Get.arguments,
      ),
    ),
    GetPage(
      name: RoutesName.shippingScreen,
      page: () => ShippingScreen(
        productInfo: Get.arguments,
      ),
    ),
    GetPage(
      name: RoutesName.shopScreen,
      page: () => ShopScreen(
        product: Get.arguments,
      ),
    ),
    GetPage(
      name: RoutesName.googleMapScreen,
      page: () => GoogleMapScreen(),
    ),
  ];
}
