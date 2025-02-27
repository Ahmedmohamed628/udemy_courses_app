import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';


class ScreenTwoHeader extends GetView<CreateCourseTwoController> {
  const ScreenTwoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenheight * 0.2,
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => Text(
                controller.pageTitle.value,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor),
              )),
          Image.asset(AppImages.createCourse)
        ],
      ),
    );
  }
}