import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/models/booking_list_model.dart';

class ListBooking extends StatelessWidget {
  const ListBooking({
    Key? key,
    required this.size,
    required this.buttonTitle,required this.vertical, this.onTap,
  }) : super(key: key);

  final Size size;
  final String buttonTitle;
  final  vertical;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: vertical,
      ),
      child: Column(
        children: List.generate(
          bookingList.length,
          (index) => Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            margin: const EdgeInsets.only(
              top: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    bookingList[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: size.width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        bookingList[index].title,
                        style: TextStyle(
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.bold,
                          color: kTitleColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/location_icon.svg',
                              ),
                              SizedBox(width: size.width * 0.01),
                              Text(
                                bookingList[index].subTitle,
                                style: TextStyle(
                                  fontSize: size.width * 0.03,
                                  color: kTextColor,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: onTap,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: kPrimeryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                buttonTitle,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
