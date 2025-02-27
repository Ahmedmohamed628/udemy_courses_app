import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/class/screen_size/screen_size.dart';
import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../data/const_data/onboarding_data.dart';


class OnboardingWidget extends StatelessWidget {
  final int index;
  const OnboardingWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.05, vertical: ScreenSize.screenheight * 0.003),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(onBoardingData[index].image),
          SizedBox(
            height: ScreenSize.screenheight * 0.1,
          ),
          Text(
            onBoardingData[index].title,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ScreenSize.screenheight * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.01),
            child: Text(
              onBoardingData[index].body,
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}