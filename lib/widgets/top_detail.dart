import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';


class TopDetail extends StatelessWidget {
  const TopDetail({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.08,
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimeryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            'Details Restaurant',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.04,
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 15,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
