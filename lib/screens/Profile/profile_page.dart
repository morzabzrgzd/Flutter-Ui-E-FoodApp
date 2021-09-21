import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/widgets/top_account.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopProfileAccount(size: size),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.05),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045,
                  vertical: size.height * 0.025,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      SvgPicture.asset('assets/icons/user_icon.svg'),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Account setting',
                          style: TextStyle(
                            color: kTitleColor,
                            fontSize: size.width * 0.05,
                          ),
                        ),
                      ),
                    ]),
                    SvgPicture.asset('assets/icons/pencell_icon.svg'),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.02),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045,
                  vertical: size.height * 0.025,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    profileItems(
                      size: size,
                      title: 'Language',
                      icon: 'assets/icons/language_icon.svg',
                    ),
                    SizedBox(height: size.height * 0.025),
                    profileItems(
                      size: size,
                      title: 'Feedback',
                      icon: 'assets/icons/feedback_icon.svg',
                    ),
                    SizedBox(height: size.height * 0.025),
                    profileItems(
                      size: size,
                      title: 'Rate us',
                      icon: 'assets/icons/rate_icon.svg',
                    ),
                    SizedBox(height: size.height * 0.025),
                    profileItems(
                      size: size,
                      title: 'New Version',
                      icon: 'assets/icons/newVesion_icon.svg',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: size.height*0.045
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      )
                    ],
                    color:const Color(0xffEB4646),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Logout', style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width*0.04,
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row profileItems({
    size,
    icon,
    title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(icon),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: kTitleColor,
                  fontSize: size.width * 0.045,
                ),
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: size.width * 0.04,
        )
      ],
    );
  }
}
