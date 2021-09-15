import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/buttom_login_regis_google.dart';
import 'package:food_app/widgets/form_items.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormItems(
              obscureText: false,
              size: size,
              hintText: 'Enter your full name',
              title: 'Full Name',
              padding: const EdgeInsets.only(
                top: 20,
              ),
            ),
            FormItems(
              obscureText: false,
              size: size,
              hintText: 'Eg namaemail@emailkamu.com',
              title: 'Email Address',
              padding: const EdgeInsets.only(
                top: 15,
              ),
            ),
            FormItems(
              obscureText: true,
              size: size,
              hintText: '**** **** ****',
              title: 'Password',
              padding: const EdgeInsets.only(
                top: 15,
              ),
            ),
            ButtomRegisterAndLoginAndGoogle(
              size: size,
              titleButtom: 'Registration',
            ),
          ],
        ),
      ),
    );
  }
}
