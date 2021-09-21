import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';

class SeeAllRowWidget extends StatelessWidget {
  const SeeAllRowWidget({
    Key? key,
    required this.size,required this.title,required this.subTitle,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.05,
        right: size.width * 0.05,
        top: size.height * 0.04,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: kTitleColor,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  color: kTextColor,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'See All ',
                  style: TextStyle(
                    fontSize: size.width * 0.035,
                    color: kTextColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTextColor,
                  size: size.width * 0.035,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
