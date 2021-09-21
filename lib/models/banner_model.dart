import 'package:flutter/cupertino.dart';

class BannerModel {
  final String title;
  final String imageBanner;
  final String topImage;
  final gradientColor;

  BannerModel({
    required this.imageBanner,
    required this.title,
    required this.topImage,
    required this.gradientColor,
  });
}

List<BannerModel> banner = <BannerModel>[
  BannerModel(
    title: 'Flash Offer',
    imageBanner: 'assets/images/banner_image1.png',
    topImage: 'assets/images/image1.png',
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xffFF9F06),
        Color(0xffFFE1B4),
      ],
    ),
  ),
  BannerModel(
    title: 'New Arivable',
    imageBanner: 'assets/images/banner_image2.png',
    topImage: 'assets/images/image2.png',
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff00D756),
        Color(0xff018AC5),
      ],
    ),
  ),
];
