import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controller/splash_controller/splash_controller.dart';
import '../../../core/class/screen_size/screen_size.dart';
import '../../../core/const/app_colors/app_colors.dart';
import '../../../core/const/app_images/app_images.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController() , permanent: true);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        width: ScreenSize.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: ScreenSize.screenheight * 0.05,
          children: [
            Stack(
              children: [
                Image.asset(AppImages.logo),
                Positioned(
                    top: ScreenSize.screenheight * 0.055,
                    left: ScreenSize.screenWidth * 0.075,
                    child: Text(
                      "Logo",
                      style: TextStyle(
                          fontSize: 26.sp,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ).animate().fadeIn(
                duration: Duration(seconds: 2), curve: Curves.bounceInOut),
            Text("Name",
                    style: TextStyle(
                        fontSize: 26.sp,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold))
                .animate()
          ],
        ).animate().align(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            duration: Duration(seconds: 3),
            curve: Curves.ease),
      ),
    );
  }
}