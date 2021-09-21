import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/models/banner_model.dart';
import 'package:food_app/models/booking_list_model.dart';
import 'package:food_app/models/list_hor_model.dart';
import 'package:food_app/widgets/banner_widget.dart';
import 'package:food_app/widgets/list_hor_widget.dart';
import 'package:food_app/widgets/see_all_widget.dart';
import 'package:food_app/widgets/top_widget_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          TopWidgetHomePage(size: size),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BnnerWidget(size: size),
                    SeeAllRowWidget(
                      size: size,
                      title: 'Today New Arivable',
                      subTitle: 'Best of the today  food list update',
                    ),
                    ListHorizantalWidget(size: size),
                    SeeAllRowWidget(
                      size: size,
                      title: 'Booking Restaurant',
                      subTitle: 'Check your city Near by Restaurant',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.03,
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
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/location_icon.svg',
                                              ),
                                              SizedBox(
                                                  width: size.width * 0.01),
                                              Text(
                                                bookingList[index].subTitle,
                                                style: TextStyle(
                                                  fontSize: size.width * 0.03,
                                                  color: kTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 30,
                                              vertical: 5,
                                            ),
                                            decoration: BoxDecoration(
                                              color: kPrimeryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              'Book',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: size.width * 0.04,
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
