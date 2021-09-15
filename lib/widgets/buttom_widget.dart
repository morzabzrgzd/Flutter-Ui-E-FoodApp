import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.size,
    required this.backgroundColor,
    required this.title,
    required this.titleColor,
    required this.onTab,
  }) : super(key: key);

  final Size size;
  final Color backgroundColor;
  final String title;
  final Color titleColor;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: size.height * 0.01),
        height: size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.w700,
            fontSize: size.width * 0.038,
          ),
        ),
      ),
    );
  }
}
