import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/view/Home/product_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/check_out_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/profile_screen.dart';
import 'package:stylish_ecommerce_wc/view/Home/shop_screen.dart';

import '../../view/Home/home_screen.dart';

class ProductData {
  final String? images;
  final String? title;
  final String? rating;
  final double? price;
  final String? disCount;
  final String? productColors;
  ProductData(this.images, this.title, this.productColors,
      {this.rating, this.price, this.disCount});
}

class demo {
  final String demo1;
  final String demo2;

  demo({required this.demo1, required this.demo2});
}

class ProductInfo {
  final String? images;
  final String? title;
  final String? description;
  final double? discountPrice;
  final double? price;
  final String? discount;
  final double? review;

  ProductInfo(this.images, this.title, this.description, this.discountPrice, this.price,
      this.discount, this.review);
}

class TrendingProductInfo {
  final String? img;
  final String? title;
  final double? discountPrice;
  final double? price;
  final String? description;
  final String? discount;
  final List? size;
  final double? review;
  final int? rating;

  TrendingProductInfo(this.img, this.title, this.discountPrice, this.price, this.description,
      this.discount, this.size, this.review, this.rating);
}

class NewProductInfo {
  final String? images;
  final String? title;
  final double? discountPrice;
  final double? price;
  final String? discount;

  NewProductInfo(this.images, this.title, this.discountPrice, this.price, this.discount);
}

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

  static List<ProductData> homepageImagePageView = [
    ProductData(
      AppImagesKey.shopping,
      "Now in (product)",
      "All Colours",
      disCount: "50-70% OFF",
    ),
    ProductData(
      AppImagesKey.shopping,
      "Now in (product)",
      "All Colours",
      disCount: "50-90% OFF",
    ),
    ProductData(
      AppImagesKey.shopping,
      "Now in (product)",
      "All Colours",
      disCount: "40-70% OFF",
    ),
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

  static List<ProductInfo> productInfo = [
    ProductInfo(
      AppImagesKey.kurtaProduct1,
      "Women Printed Kurta",
      "Neque porro quisquam est qui dolorem ipsum quia",
      1500,
      2499,
      "40%off",
      56890,
    ),
    ProductInfo(
      AppImagesKey.shoesProduct2,
      "HRX by Hrithik Roshan",
      "Neque porro quisquam est qui dolorem ipsum quia",
      2499,
      4999,
      "50%%off",
      344567,
    ),
    ProductInfo(
      AppImagesKey.kurtaProduct1,
      "Women Printed Kurta",
      "Neque porro quisquam est qui dolorem ipsum quia",
      1500,
      2499,
      "40%off",
      56890,
    ),
    ProductInfo(
      AppImagesKey.shoesProduct2,
      "HRX by Hrithik Roshan",
      "Neque porro quisquam est qui dolorem ipsum quia",
      2499,
      4999,
      "50%%off",
      344567,
    ),
    ProductInfo(
      AppImagesKey.kurtaProduct1,
      "Women Printed Kurta",
      "Neque porro quisquam est qui dolorem ipsum quia",
      1500,
      2499,
      "40%off",
      56890,
    ),
    ProductInfo(
      AppImagesKey.shoesProduct2,
      "HRX by Hrithik Roshan",
      "Neque porro quisquam est qui dolorem ipsum quia",
      2499,
      4999,
      "50%%off",
      344567,
    ),
  ];

  static List<TrendingProductInfo> trendingProductsInfo = [
    TrendingProductInfo(
        AppImagesKey.blackWinter,
        "Black Winter",
        499,
        1000,
        "The Black Winter is a high-output, versatile humbucker guitar pickup, designed for heavy metal and aggressive playing styles. It offers searing highs, tight bass, and a balanced midrange for brutal tones with exceptional clarity.",
        "50% off ",
        ["M", "L", "S", "XL", "XXL"],
        6890,
        4),
    TrendingProductInfo(
      AppImagesKey.mensStarry,
      "Mens Starry",
      399,
      800,
      "The Men's Starry collection features stylish apparel and accessories inspired by the elegance of starry nights. Designed for comfort and sophistication, these pieces are perfect for making a bold, celestial statement in everyday or special occasions.",
      "50% off ",
      ["M", "L", "S", "XL", "XXL"],
      152344,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.blackDress,
      "Black Dress",
      2000,
      4000,
      "The Women's Black Dress collection offers timeless elegance with sleek designs perfect for any occasion. From chic casual wear to sophisticated evening gowns, these dresses are crafted to enhance confidence and style.",
      "50% off ",
      ["M", "L", "S", "XL", "XXL"],
      523456,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.pinkEmbroide,
      "Pink Embroide...",
      1900,
      3800,
      "The Pink Embroidered collection for women features beautifully detailed designs that combine elegance with femininity. Perfect for festive occasions or casual outings, these pieces showcase intricate embroidery on soft pink fabrics, offering a blend of charm and sophistication.",
      "50% off ",
      ["M", "L", "S", "XL", "XXL"],
      45678,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.flareDress,
      "Flare Dress",
      1990,
      3980,
      "The Women's Flare Dress collection features stylish, flowy designs that add grace and comfort to your wardrobe. Perfect for casual outings or special occasions, these dresses enhance movement with their flared silhouettes, offering a chic and timeless look.",
      "50% off ",
      ["M", "L", "S", "XL", "XXL"],
      45678,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.denimDress,
      "denim Dress",
      999,
      2000,
      "The Women's Denim Dress collection blends casual comfort with trendy style, perfect for everyday wear or a relaxed outing. These versatile dresses come in various cuts and washes, offering a chic and effortless look that suits any occasion.",
      "50% off ",
      ["M", "L", "S", "XL", "XXL"],
      27344,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.jordanStay,
      "Jordan Stay",
      4999,
      10000,
      "The Jordan Stay Shoes for men combine iconic style with all-day comfort. Designed with premium materials and advanced cushioning, they offer a sleek look and excellent performance, perfect for both sports and casual wear.",
      "50% off ",
      [
        "7 UK",
        "8 UK",
        "9 UK",
        "10 UK",
        "11 UK",
        "12 UK",
      ],
      1023456,
      3,
    ),
    TrendingProductInfo(
      AppImagesKey.realme7,
      "Realme 7",
      3500,
      7000,
      "The Realme 7 mobile features a powerful MediaTek Helio G95 processor, a 6.5-inch FHD+ display with a 90Hz refresh rate, and a 5000mAh battery with 30W Dart Charge. It also boasts a quad-camera setup, including a 64MP primary sensor, making it perfect for gaming, photography, and seamless multitasking.",
      "50% off ",
      [
        "6 + 64",
        "8 + 64",
        "6 + 128",
        "12 + 128",
        "16 + 128",
      ],
      344567,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.sonyPS4,
      "Sony PS4",
      1999,
      4000,
      "The Sony PS4 is a powerful gaming console offering immersive gameplay with stunning graphics and exclusive titles. Equipped with a 1.6GHz AMD Jaguar processor, 8GB RAM, and a 500GB/1TB storage option, it supports Blu-ray, streaming, and multiplayer gaming for endless entertainment.",
      "50% off ",
      [
        "256 GB",
        "512 GB",
        "1 TB",
        "2 TB",
      ],
      835566,
      3,
    ),
    TrendingProductInfo(
      AppImagesKey.blackJacket,
      "Black Jacket",
      2999,
      6000,
      "The Black Jacket 12 for men is a stylish, versatile outerwear piece designed to offer both warmth and fashion. Featuring a sleek black design, it is perfect for casual or semi-formal occasions, providing comfort and a modern look with its quality fabric and fit.",
      "50% off ",
      [
        "M",
        "L",
        "S",
        "XL",
        "XXL",
      ],
      223569,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.nikonCamera,
      "Nikon Camera",
      26999,
      54000,
      "The Nikon D7200 is a DSLR digital camera known for its impressive image quality and fast performance. With a 24.2MP sensor, 51-point autofocus system, and 1080p HD video recording, it offers great versatility for both photography enthusiasts and professionals. The camera also features Wi-Fi connectivity for easy sharing and remote control.",
      "50% off ",
      [
        "200 D",
        "700 D",
        "1300 D",
        "7200 D",
      ],
      67456,
      4,
    ),
    TrendingProductInfo(
      AppImagesKey.mensLoferShoes,
      "Men Formal Shoes",
      999,
      2000,
      "Men’s and boys' loafer shoes offer a perfect combination of comfort and style, making them ideal for both casual and semi-formal occasions. With slip-on designs and soft materials like leather or suede, they provide a relaxed yet polished look for everyday wear.",
      "50% off ",
      [
        "200 D",
        "700 D",
        "1300 D",
        "7200 D",
      ],
      1645678,
      5,
    ),
    TrendingProductInfo(
        AppImagesKey.muesli,
        "muesli",
        999,
        2000,
        "Muesli is a healthy and nutritious breakfast dish made from a mixture of rolled oats, nuts, seeds, and dried fruits. Often enjoyed with milk, yogurt, or fruit juice, it’s a great source of fiber, vitamins, and energy to start the day.",
        "50% off ",
        [
          "150 GM",
          "250 GM",
          "500 GM",
          "1 KG",
        ],
        145678,
        2),
    TrendingProductInfo(
        AppImagesKey.hotChocolate,
        "Hot Chocolate",
        999,
        2000,
        "Hot chocolate is a warm, comforting beverage made by mixing milk or water with cocoa powder and sugar. It can be topped with whipped cream or marshmallows for extra sweetness, making it a popular choice for chilly days or as a cozy treat.",
        "50% off ",
        [
          "150 GM",
          "250 GM",
          "500 GM",
          "1 KG",
        ],
        145678,
        5),
  ];

  static List<NewProductInfo> newProduct = [
    NewProductInfo(
      AppImagesKey.watchImg,
      "IWC Schaffhausen 2021 Pilot's Watch  'SIHH 2019' 44mm",
      650,
      1599,
      "60% off ",
    ),
    NewProductInfo(
      AppImagesKey.labbinWhiteSneakers,
      "Labbin White Sneakers For Men and Female",
      650,
      1250,
      "70% off",
    ),
    NewProductInfo(
      AppImagesKey.watchImg,
      "Mammon Women's Handbag(Set of 3, Beige)",
      750,
      1999,
      "70% off ",
    ),
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

  static const String rupeesLogo = "₹";

  ///Product Screen

  static const String items = "Items";
  static const String nearestStore = "Nearest Store";
  static const String returnPolicy = "Return policy";
  static const String vIP = "VIP";
  static const String goToCart = "Go to Cart";
  static const String buyNow = "Buy Now";
  static const String viewSimilar = "View Similar";
  static const String addToCompare = "Add to Compare";
  static const String productDetails = "Product Details";
  static const String deliveryIn = "Delivery in ";
  static const String withInHour = "1 Within Hour";
  static const String similarTo = "Similar To";
  static const String size = "Size:";
}
