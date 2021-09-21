import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/data/colors.dart';

class TopWidgetHomePage extends StatelessWidget {
  const TopWidgetHomePage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.02,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/Menu_icon.svg',
                width: size.width * 0.05,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/location_icon.svg'),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    'Agrabad 435, Chittagong',
                    style: TextStyle(
                      color: kTitleColor,
                      fontSize: size.width * 0.035,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  'assets/images/profile_image.png',
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
              left: size.width * 0.06,
              right: size.width * 0.06,
              top: size.height * 0.02,
            ),
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: const Color(0xffE6E7E9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Color(0xff9CA3AF),
                ),
                icon: SvgPicture.asset('assets/icons/search_icon.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
