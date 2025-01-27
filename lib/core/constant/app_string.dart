import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/view/Home/Product_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/check_out_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/profile_screen.dart';

import '../../view/Home/home_screen.dart';

class AppString {
  ///private Constructor
  AppString._();

  ///Images List:-------

  ///onboarding
  static List<String> onboardingImage = [
    AppImagesKey.chooseProducts,
    AppImagesKey.makePayment,
    AppImagesKey.getYourOrder,
  ];
  static List homepageImagePageView = [
    {
      "images": AppImagesKey.shopping,
      "discount": "50-70% OFF",
      "title": "Now in (product)",
      "color": "All Colours"
    },
    {
      "images": AppImagesKey.shopping,
      "discount": "50-90% OFF",
      "title": "Now in (product)",
      "color": "All Colours"
    },
    {
      "images": AppImagesKey.shopping,
      "discount": "40-70% OFF",
      "title": "Now in (product)",
      "color": "All Colours"
    }
  ];

  static List<String> featuredImages = [
    AppImagesKey.beauty,
    AppImagesKey.fashion,
    AppImagesKey.kids,
    AppImagesKey.mens,
    AppImagesKey.women,
    AppImagesKey.women,
  ];

  ///Name List:-------------

  static List onboardingTitle = [
    "Choose Products",
    "Make Payment",
    "Get Your Order",
  ];

  static List onboardingSubTitle1 = [
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
  ];

  static List<String> featuredName = ["Beauty", "Fashion", "Kids", "Mens", "Womens", "123"];

  static Map<String, dynamic> productInfo = {
    "product1": {
      "images": AppImagesKey.kurtaProduct1,
      "title": "Women Printed Kurta",
      "description": "Neque porro quisquam est qui dolorem ipsum quia",
      "discountPrice": "₹1500",
      "price": "₹2499",
      "discount": "40%off",
      "itemCount": "56890",
    },
    "product2": {
      "images": AppImagesKey.shoesProduct2,
      "title": "HRX by Hrithik Roshan",
      "description": "Neque porro quisquam est qui dolorem ipsum quia",
      "discountPrice": "₹2499",
      "price": "₹4999",
      "discount": "50%off",
      "itemCount": "344567",
    },
    "product3": {
      "images": AppImagesKey.kurtaProduct1,
      "title": "Women Printed Kurta",
      "description": "Neque porro quisquam est qui dolorem ipsum quia",
      "discountPrice": "₹1500",
      "price": "₹2499",
      "discount": "40%off",
      "itemCount": "56890",
    },
    "product4": {
      "images": AppImagesKey.shoesProduct2,
      "title": "HRX by Hrithik Roshan",
      "description": "Neque porro quisquam est qui dolorem ipsum quia",
      "discountPrice": "₹2499",
      "price": "₹4999",
      "discount": "50%off",
      "itemCount": "344567",
    },
    "product5": {
      "images": AppImagesKey.kurtaProduct1,
      "title": "Women Printed Kurta",
      "description": "Neque porro quisquam est qui dolorem ipsum quia",
      "discountPrice": "₹1500",
      "price": "₹2499",
      "discount": "40%off",
      "itemCount": "56890",
    },
  };

  static List trendingProductInfo = [
    {
      "images": AppImagesKey.blackWinter,
      "title": "Black Winter...",
      "description": "Autumn And Winter Casual cotton-padded jacket...",
      "discountPrice": "499",
      "price": "1599",
      "discount": "60% off ",
      "itemCount": "6890",
    },
    {
      "images": AppImagesKey.labbinWhiteSneakers,
      "title": "Labbin White Sneakers For Men and Female",
      "discountPrice": "650",
      "price": "1250",
      "discount": "70% off "
    },
    {
      "images": AppImagesKey.watchImg,
      "title": "Mammon Women's Handbag(Set of 3, Beige)",
      "discountPrice": "750",
      "price": "1999",
      "discount": "70% off "
    }
  ];

  static List newProduct = [
    {
      "images": AppImagesKey.watchImg,
      "title": "IWC Schaffhausen 2021 Pilot's Watch  'SIHH 2019' 44mm",
      "discountPrice": "650",
      "price": "1599",
      "discount": "60% off "
    },
    {
      "images": AppImagesKey.labbinWhiteSneakers,
      "title": "Labbin White Sneakers For Men and Female",
      "discountPrice": "650",
      "price": "1250",
      "discount": "70% off "
    },
    {
      "images": AppImagesKey.watchImg,
      "title": "Mammon Women's Handbag(Set of 3, Beige)",
      "discountPrice": "750",
      "price": "1999",
      "discount": "70% off "
    }
  ];

  static List screen = [
    const HomeScreen(),
    const ProductScreen(),
    const CheckOutScreen(),
    const ProductScreen(),
    const ProfileScreen(),
  ];

  ///singInScreen
  static const String welcome = "Welcome";
  static const String back = "Back!";
  static const String usernameOrEmail = "Username or Email";
  static const String password = "Password";
  static const String forgotPassword = "Forgot Password?";
  static const String login = "Login";
  static const String orContinueWith = "- OR Continue with -";
  static const String createAnAccount = "Create An Account";
  static const String signUp = "Sign Up";

  ///SignUpScreen

  static const String createAn = "Create an";
  static const String account = "account";
  static const String confirmPassword = "ConfirmPassword";
  static const String byClicking = "By clicking the";
  static const String register = "Register";
  static const String buttonYouAgree = "button, you agree to the public offer";
  static const String createAccount = "Create Account";
  static const String iAlreadyHaveAnAccount = "I Already Have an Account";

  ///Forgot password Screen

  static const String titleForgot = "Forgot";
  static const String titlePassword = "password?";
  static const String enterEmail = "Enter your email address?";
  static const String compulsory = "*";
  static const String weWill = " We will send you a message to set or reset your new password";
  static const String submit = "Submit";

  ///GetStarted Screen
  static const String youWant = "You want \n Authentic, here \n you go!";
  static const String findIt = "Find it here, buy it now!";
  static const String getStarted = "Get Started";

  //HomeScreen

  static const String searchAnyProduct = "Search any Product..";
  static const String allFeatured = "All Featured";
  static const String sort = "Sort";
  static const String filter = "Filter";
  static const String discount = "50-70% OFF";
  static const String nowIn = "Now in (product)";
  static const String allColours = "All colours";
  static const String shopNow = "Shop Now";
  static const String dealOfTheDay = "Deal of the Day";
  static const String remaining = "22h 55m 20s remaining";
  static const String viewAll = "View All";
  static const String trendingProducts = "Trending Products ";
  static const String lastDate = "Last Date 29/02/22";
  static const String specialOffer = "Special Offer";
  static const String offerTitle = "We make sure you get the\noffer you need at best prices";
  static const String newArrivals = "New Arrivals";
  static const String summerCollections = "Summer’ 25 Collections";
  static const String sponserd = "Sponserd";
  static const String upTo = "up to 50% Off";

  ///Product Screen

  static const String items = "Items";
}
