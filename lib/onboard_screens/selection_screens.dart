import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:udemy_courses_project/authentication/register/register_Screen.dart';

import '../my_theme.dart';

class SelectionScreens extends StatelessWidget {
  static const String routeName = 'selection-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              // maybe removed later
              Navigator.of(context).pop();
            },
            icon: Icon(
              LineAwesomeIcons.angle_left_solid,
              color: MyTheme.primaryColor,
            )),
      ),
      backgroundColor: MyTheme.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/onboard_image4.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Create an account',
              style: TextStyle(
                  color: MyTheme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //instructor button
            ElevatedButton(
              onPressed: () {
                //
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: Text('Instructor',
                  style: TextStyle(
                      color: MyTheme.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(15)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //student button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: Text('Student',
                  style: TextStyle(
                      color: MyTheme.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: MyTheme.primaryColor)),
                  padding: EdgeInsets.all(15)),
            ),
          ],
        ),
      ),
    );
  }
}
