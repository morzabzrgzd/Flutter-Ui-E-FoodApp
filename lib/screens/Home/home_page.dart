import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/models/banner_model.dart';
import 'package:food_app/models/booking_list_model.dart';
import 'package:food_app/models/list_hor_model.dart';
import 'package:food_app/widgets/banner_widget.dart';
import 'package:food_app/widgets/list_booking.dart';
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
                      iconColor: const Color(0xff6B7280),
                      seeAllColor: const Color(0xff6B7280),
                      size: size,
                      title: 'Today New Arivable',
                      subTitle: 'Best of the today  food list update',
                    ),
                    ListHorizantalWidget(size: size),
                    SeeAllRowWidget(
                      iconColor: const Color(0xff6B7280),
                      seeAllColor: const Color(0xff6B7280),
                      size: size,
                      title: 'Booking Restaurant',
                      subTitle: 'Check your city Near by Restaurant',
                    ),
                    ListBooking(
                      vertical: size.height * 0.03,
                      size: size,
                      buttonTitle: 'Book',
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
