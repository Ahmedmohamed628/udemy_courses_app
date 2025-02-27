import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/class/screen_size/screen_size.dart';
import '../../../core/const/app_colors/app_colors.dart';
import '../../../core/const/app_images/app_images.dart';
import '../../../core/const/routes/app_routes_names.dart';
import '../../../main.dart';


class SelectionScreens extends StatelessWidget {
  const SelectionScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.05,
            vertical: ScreenSize.screenheight * 0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.onBordingFour),
            SizedBox(
              height: ScreenSize.screenheight * 0.1,
            ),
            Text(
              '1'.tr,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: ScreenSize.screenheight * 0.02,
            ),
            //instructor button
            ElevatedButton(
              onPressed: () {
                sharedPreferences.setString("role", "instructor");
                Get.offNamed(AppRoutesNames.loginScreen);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.sp)),
                  padding: EdgeInsets.all(15.sp)),
              child: Text('2'.tr,
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: ScreenSize.screenheight * 0.02,
            ),
            //student button
            ElevatedButton(
              onPressed: () {
                sharedPreferences.setString("role", "student");
                Get.offNamed(AppRoutesNames.loginScreen);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                      side: BorderSide(color: AppColors.primaryColor)),
                  padding: EdgeInsets.all(15.sp)),
              child: Text('3'.tr,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}