import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({
    Key? key,
    required this.size,
    required this.index,
    required this.description,
  }) : super(key: key);

  final Size size;
  final int index;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        color: kTextColor,
        fontSize: size.width * 0.038,
      ),
    );
  }
}
