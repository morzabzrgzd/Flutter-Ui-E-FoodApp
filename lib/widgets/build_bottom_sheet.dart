import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/pages/create_account_page.dart';
import 'package:food_app/pages/login_page.dart';


buildBottomSheet({context, size}) {
  showModalBottomSheet(
    isDismissible: true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    )),
    elevation: 10,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return SizedBox(
        height: size.height / 1.45,
        child: DefaultTabController(
          length: 2,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.07,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          height: 6,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.5),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: TabBar(
                              indicatorColor: kPrimeryColor,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorPadding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              labelStyle: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w700,
                              ),
                              labelColor: kPrimeryColor,
                              unselectedLabelColor: Colors.grey,
                              tabs: const [
                                Tab(
                                  text: 'Create Account',
                                ),
                                Tab(
                                  text: 'Login',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: SizedBox(
                    child: TabBarView(
                      children: [
                        CreateAccountPage(),
                        LoginPage(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
