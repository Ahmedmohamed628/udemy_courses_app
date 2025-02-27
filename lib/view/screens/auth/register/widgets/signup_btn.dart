import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class SignupBtn extends StatelessWidget {
  final void Function() func;

  const SignupBtn({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.05),
      child: ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp)),
            padding: EdgeInsets.all(15.sp)),
        child: Text('16'.tr,
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}