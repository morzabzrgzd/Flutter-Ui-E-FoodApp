import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/pages/create_account_page.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/widgets/bottom_text.dart';
import 'package:food_app/widgets/build_bottom_sheet.dart';
import 'package:food_app/widgets/buttom_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.4,
              child: Image.asset(
                'assets/images/register.png',
                width: size.width * 0.7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Text(
                'Welcome',
                style: GoogleFonts.inter(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.055,
                ),
              ),
            ),
            Text(
              '''Before enjoying Foodmedia services
      Please register first''',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: kTextColor,
                fontSize: size.width * 0.038,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: ButtonWidget(
                size: size,
                backgroundColor: kPrimeryColor,
                onTab: () {
                  buildBottomSheet(
                    context: context,
                    size: size,
                  );
                },
                title: 'Create Account',
                titleColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: ButtonWidget(
                size: size,
                backgroundColor: kPrimeryColor.withOpacity(.3),
                onTab: () {},
                title: 'Login',
                titleColor: kPrimeryColor,
              ),
            ),
            BottomTextAndRegisterScreen(size: size),
          ],
        ),
      ),
    );
  }
}
