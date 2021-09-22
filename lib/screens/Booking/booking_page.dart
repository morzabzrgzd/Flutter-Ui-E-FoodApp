import 'package:flutter/material.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/screens/Detail/detail_screen.dart';
import 'package:food_app/widgets/list_booking.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimeryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              'Booking History',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ListBooking(
                  size: size,
                  buttonTitle: 'Check',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                  vertical: size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          size: 30,
                          color: Color(0xff6B7280),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Booking more',
                          style: TextStyle(
                            color: const Color(0xff6B7280),
                            fontSize: size.width * 0.05,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
