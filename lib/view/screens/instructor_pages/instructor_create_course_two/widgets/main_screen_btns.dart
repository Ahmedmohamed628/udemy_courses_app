import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class MainScreenSingleBtn extends GetView<CreateCourseTwoController> {
  const MainScreenSingleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: ScreenSize.screenheight * 0.02),
      child: MaterialButton(
        textColor: AppColors.whiteColor,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.3,
            vertical: ScreenSize.screenheight * 0.02),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
        color: AppColors.primaryColor,
        onPressed: () {
          controller.nextPage();
        },
        child: Obx(() => Text(
              controller.btnText.value,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
            )),
      ),
    );
  }
}

class MainScreenDoubleBtn extends GetView<CreateCourseTwoController> {
  const MainScreenDoubleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CostumBtn(
          btnColor: AppColors.whiteColor,
          textColor: AppColors.primaryColor,
          text: "Save",
          borderColor: AppColors.primaryColor,
        ),
        Obx(() => CostumBtn(
              btnColor: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              text: controller.btnText.value,
            )),
      ],
    );
  }
}

class CostumBtn extends GetView<CreateCourseTwoController> {
  final Color btnColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  const CostumBtn({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.text,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: ScreenSize.screenWidth * 0.018,
          vertical: ScreenSize.screenheight * 0.02),
      child: MaterialButton(
        textColor: textColor,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.1,
            vertical: ScreenSize.screenheight * 0.02),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(10.sp)),
        color: btnColor,
        onPressed: () {
          controller.nextPage();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}