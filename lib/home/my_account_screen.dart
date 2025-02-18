import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:udemy_courses_project/my_theme.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(
              color: MyTheme.blackShadeColor,
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //image account
            Center(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.13,
                child: ClipOval(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset('assets/images/my_account_image.png',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
                child: Text(
              'Ahmed Abbas',
              style: TextStyle(
                  color: MyTheme.blackShadeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Switch to instructor view',
                      style: TextStyle(
                          color: MyTheme.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                Icon(
                  LineAwesomeIcons.angle_down_solid,
                  color: MyTheme.primaryColor,
                  size: 14,
                ),
              ],
            ),
            Divider(
              color: MyTheme.outlineTextFormColor,
            ),
            //1st divider
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Courses',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Cart',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Wishlist',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: MyTheme.outlineTextFormColor,
            ),
            //2nd divider
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Notifications',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Messages',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: MyTheme.outlineTextFormColor,
            ),
            //3rd divider
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Account Settings',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            Divider(
              color: MyTheme.outlineTextFormColor,
            ),
            //4th divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Language',
                      style: TextStyle(
                          color: MyTheme.blackShadeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                Icon(Icons.language_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
