import 'package:flutter/material.dart';


class FormItems extends StatelessWidget {
  const FormItems({
    Key? key,
    required this.size,
    required this.hintText,
    required this.title,
    required this.padding,
    required this.obscureText,
  }) : super(key: key);

  final Size size;
  final String hintText;
  final String title;
  final bool obscureText;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: size.width * 0.038,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 5,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
            ),
            height: size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
