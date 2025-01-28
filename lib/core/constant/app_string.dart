import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/view/Home/Product_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/check_out_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/profile_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/shop_screen.dart';

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

  static List trendingProductsInfo = [
    {
      "images": AppImagesKey.blackWinter,
      "title": "Black Winter...",
      "discountPrice": "499",
      "price": "1,000",
      "description":
          "The Black Winter is a high-output, versatile humbucker guitar pickup, designed for heavy metal and aggressive playing styles. It offers searing highs, tight bass, and a balanced midrange for brutal tones with exceptional clarity.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "6890",
    },
    {
      "images": AppImagesKey.mensStarry,
      "title": "Mens Starry",
      "discountPrice": "399",
      "price": "800",
      "description":
          "The Men's Starry collection features stylish apparel and accessories inspired by the elegance of starry nights. Designed for comfort and sophistication, these pieces are perfect for making a bold, celestial statement in everyday or special occasions.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "1,52,344",
    },
    {
      "images": AppImagesKey.blackDress,
      "title": "Black Dress",
      "discountPrice": "2,000",
      "price": "4,000",
      "description":
          "The Women's Black Dress collection offers timeless elegance with sleek designs perfect for any occasion. From chic casual wear to sophisticated evening gowns, these dresses are crafted to enhance confidence and style.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "5,23,456",
    },
    {
      "images": AppImagesKey.pinkEmbroide,
      "title": "Pink Embroide...",
      "discountPrice": "1,900",
      "price": "3,800",
      "description":
          "The Pink Embroidered collection for women features beautifully detailed designs that combine elegance with femininity. Perfect for festive occasions or casual outings, these pieces showcase intricate embroidery on soft pink fabrics, offering a blend of charm and sophistication.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "45,678",
    },
    {
      "images": AppImagesKey.flareDress,
      "title": "Flare Dress",
      "discountPrice": "1,990",
      "price": "3,980",
      "description":
          "The Women's Flare Dress collection features stylish, flowy designs that add grace and comfort to your wardrobe. Perfect for casual outings or special occasions, these dresses enhance movement with their flared silhouettes, offering a chic and timeless look.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "45,678",
    },
    {
      "images": AppImagesKey.denimDress,
      "title": "denim Dress",
      "discountPrice": "999",
      "price": "2,000",
      "description":
          "The Women's Denim Dress collection blends casual comfort with trendy style, perfect for everyday wear or a relaxed outing. These versatile dresses come in various cuts and washes, offering a chic and effortless look that suits any occasion.",
      "discount": "50% off ",
      "size": ["M", "L", "S", "XL", "XXL"],
      "review": "27,344",
    },
    {
      "images": AppImagesKey.jordanStay,
      "title": "Jordan Stay",
      "discountPrice": "4999",
      "price": "10,000",
      "description":
          "The Jordan Stay Shoes for men combine iconic style with all-day comfort. Designed with premium materials and advanced cushioning, they offer a sleek look and excellent performance, perfect for both sports and casual wear.",
      "discount": "50% off ",
      "size": [
        "7 UK",
        "8 UK",
        "9 UK",
        "10 UK",
        "11 UK",
        "12 UK",
      ],
      "review": "10,23,456",
    },
    {
      "images": AppImagesKey.realme7,
      "title": "Realme 7",
      "discountPrice": "3,500",
      "price": "7,000",
      "description":
          "The Realme 7 mobile features a powerful MediaTek Helio G95 processor, a 6.5-inch FHD+ display with a 90Hz refresh rate, and a 5000mAh battery with 30W Dart Charge. It also boasts a quad-camera setup, including a 64MP primary sensor, making it perfect for gaming, photography, and seamless multitasking.",
      "discount": "50% off ",
      "size": [
        "6 + 64",
        "8 + 64",
        "6 + 128",
        "12 + 128",
        "16 + 128",
      ],
      "review": "3,44,567",
    },
    {
      "images": AppImagesKey.sonyPS4,
      "title": "Sony PS4",
      "discountPrice": "1,999",
      "price": "4,000",
      "description":
          "The Sony PS4 is a powerful gaming console offering immersive gameplay with stunning graphics and exclusive titles. Equipped with a 1.6GHz AMD Jaguar processor, 8GB RAM, and a 500GB/1TB storage option, it supports Blu-ray, streaming, and multiplayer gaming for endless entertainment.",
      "discount": "50% off ",
      "size": [
        "256 GB",
        "512 GB",
        "1 TB",
        "2 TB",
      ],
      "review": "8,35,566",
    },
    {
      "images": AppImagesKey.blackJacket,
      "title": "Black Jacket",
      "discountPrice": "2,999",
      "price": "6,000",
      "description":
          "The Black Jacket 12 for men is a stylish, versatile outerwear piece designed to offer both warmth and fashion. Featuring a sleek black design, it is perfect for casual or semi-formal occasions, providing comfort and a modern look with its quality fabric and fit.",
      "discount": "50% off ",
      "size": [
        "M",
        "L",
        "S",
        "XL",
        "XXL",
      ],
      "review": "2,23,569",
    },
    {
      "images": AppImagesKey.nikonCamera,
      "title": "Nikon Camera",
      "discountPrice": "26,999",
      "price": "54,000",
      "description":
          "The Nikon D7200 is a DSLR digital camera known for its impressive image quality and fast performance. With a 24.2MP sensor, 51-point autofocus system, and 1080p HD video recording, it offers great versatility for both photography enthusiasts and professionals. The camera also features Wi-Fi connectivity for easy sharing and remote control.",
      "discount": "50% off ",
      "size": [
        "200 D",
        "700 D",
        "1300 D",
        "7200 D",
      ],
      "review": "67,456",
    },
    {
      "images": AppImagesKey.mensLoferShoes,
      "title": "Men Formal Shoes",
      "discountPrice": "999",
      "price": "2,000",
      "description":
          "Men’s and boys' loafer shoes offer a perfect combination of comfort and style, making them ideal for both casual and semi-formal occasions. With slip-on designs and soft materials like leather or suede, they provide a relaxed yet polished look for everyday wear.",
      "discount": "50% off ",
      "size": [
        "200 D",
        "700 D",
        "1300 D",
        "7200 D",
      ],
      "review": "16,45,678",
    },
    {
      "images": AppImagesKey.muesli,
      "title": "muesli",
      "discountPrice": "999",
      "price": "2,000",
      "description":
          "Muesli is a healthy and nutritious breakfast dish made from a mixture of rolled oats, nuts, seeds, and dried fruits. Often enjoyed with milk, yogurt, or fruit juice, it’s a great source of fiber, vitamins, and energy to start the day.",
      "discount": "50% off ",
      "size": [
        "150 GM",
        "250 GM",
        "500 GM",
        "1 KG",
      ],
      "review": "1,45,678",
    },
    {
      "images": AppImagesKey.hotChocolate,
      "title": "Hot Chocolate",
      "discountPrice": "999",
      "price": "2,000",
      "description":
          "Hot chocolate is a warm, comforting beverage made by mixing milk or water with cocoa powder and sugar. It can be topped with whipped cream or marshmallows for extra sweetness, making it a popular choice for chilly days or as a cozy treat.",
      "discount": "50% off ",
      "size": [
        "150 GM",
        "250 GM",
        "500 GM",
        "1 KG",
      ],
      "review": "1,45,678",
    },
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
    const ShopScreen(),
    const CheckOutScreen(),
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
