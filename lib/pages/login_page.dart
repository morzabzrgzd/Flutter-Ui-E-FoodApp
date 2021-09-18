import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_app/data/colors.dart';
import 'package:food_app/screens/Forget%20Password/forget_password_screen.dart';
import 'package:food_app/screens/Home/home_screen.dart';
import 'package:food_app/widgets/buttom_login_regis_google.dart';
import 'package:food_app/widgets/form_items.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              hintText: 'Eg namaemail@emailkamu.com',
              title: 'Email Address',
              padding: const EdgeInsets.only(
                top: 20,
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const  ForgetPasswordScreen(),
                  ),
                );
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w700,
                        color: kPrimeryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ButtomRegisterAndLoginAndGoogle(
              size: size,
              titleButtom: 'Login',
              onTab: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const  HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
