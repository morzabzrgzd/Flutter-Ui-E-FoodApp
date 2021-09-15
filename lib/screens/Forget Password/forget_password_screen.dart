import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/screens/Forget%20Password/success_password_screen.dart';
import 'package:food_app/widgets/buttom_widget.dart';
import 'package:food_app/widgets/form_items.dart';
import 'package:food_app/widgets/title_text.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgrounColor,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.15,
                  bottom: 10,
                ),
                child: Text(
                  'Forget Password',
                  style: GoogleFonts.inter(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
              Text(
                'Enter your registered email below',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: kTextColor,
                  fontSize: size.width * 0.038,
                ),
              ),
              FormItems(
                size: size,
                hintText: 'Eg namaemail@emailkamu.com',
                title: 'Email address',
                padding: EdgeInsets.only(top: size.height * 0.09),
                obscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Remember the password?  ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: kTextColor,
                        fontSize: size.width * 0.038,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: kPrimeryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: ButtonWidget(
                    size: size,
                    backgroundColor: kPrimeryColor,
                    title: 'Submit',
                    titleColor: Colors.white,
                    onTab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SuccessPaswordScreen(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
