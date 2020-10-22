import 'package:flutter/material.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/HomePage/poll.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Login/login_screen.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Signup/components/background.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Signup/components/or_divider.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/pearson.jpg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePageScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
