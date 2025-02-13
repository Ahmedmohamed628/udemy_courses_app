import 'package:flutter/material.dart';
import 'package:udemy_courses_project/onboard_screens/selection_screens.dart';
import 'package:udemy_courses_project/onboard_screens/onboard_screens.dart';
import 'authentication/login/login_screen.dart';
import 'authentication/register/register_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardScreens.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        OnboardScreens.routeName: (context) => OnboardScreens(),
        SelectionScreens.routeName: (context) => SelectionScreens(),
      },
    );
  }
}
