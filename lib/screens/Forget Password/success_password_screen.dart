import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/widgets/buttom_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPaswordScreen extends StatelessWidget {
  const SuccessPaswordScreen({Key? key}) : super(key: key);

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
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.25,
                ),
                child: SvgPicture.asset('assets/icons/SuccessIcon.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Text(
                  'Success',
                  style: GoogleFonts.inter(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
              Text(
                'Please check your email for create\na new password',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: kTextColor,
                  fontSize: size.width * 0.038,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cant get email?  ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.038,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Resubmit',
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
                    title: 'Back Email',
                    titleColor: Colors.white,
                    onTab: () {},
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
