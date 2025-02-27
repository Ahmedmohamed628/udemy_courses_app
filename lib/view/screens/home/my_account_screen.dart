import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../core/const/app_colors/app_colors.dart';
import '../../../core/const/app_images/app_images.dart';


class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
              child: Text('My Account',
                  style: TextStyle(
                      color: AppColors.backgroundShadeColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500))),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.03,
          // ),
          //image account
            Center(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.13,
                child: ClipOval(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset(AppImages.accountImage,
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
                color: AppColors.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('Switch to instructor view',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500))),
              Icon(
                LineAwesomeIcons.angle_down_solid,
                color: AppColors.primaryColor,
                size: 14,
              ),
            ],
          ),

          Divider(
            color: AppColors.blackColor,
          ),
          //1st divider
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Courses',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'My Cart',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Wishlist',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
          Divider(
            color: AppColors.blackColor,
          ),
          //2nd divider
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          TextButton(
                onPressed: () {},
                child: Text(
                  'Notifications',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Messages',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
          Divider(
            color: AppColors.blackColor,
          ),
          //3rd divider
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          TextButton(
                onPressed: () {},
                child: Text(
                  'Account Settings',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
          Divider(
            color: AppColors.blackColor,
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
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                Icon(Icons.language_outlined),
              ],
            ),
          ],
        ),
    );
  }
}