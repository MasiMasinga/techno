import 'package:flutter/material.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechnoCrats',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
