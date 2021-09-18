// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/screens/Booking/booking_page.dart';
import 'package:food_app/screens/Home/home_page.dart';
import 'package:food_app/screens/Profile/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List bottomNavigationBarIcons = [
    'assets/icons/Home_icon.svg',
    'assets/icons/Booking_icon.svg',
    'assets/icons/Profile_icon.svg',
  ];

  List childrenBody = [
    const HomePage(),
    const BookingPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomNavigationBarIcons.length,
              (index) => InkWell(
                onTap: () {
                  setState(() => selectedIndex = index);
                },
                child: SvgPicture.asset(
                  bottomNavigationBarIcons[index],
                  color: selectedIndex == index
                      ? kPrimeryColor
                      : Colors.grey.shade700,
                ),
              ),
            ),
          ),
        ),
        body: childrenBody[selectedIndex],
      ),
    );
  }
}
