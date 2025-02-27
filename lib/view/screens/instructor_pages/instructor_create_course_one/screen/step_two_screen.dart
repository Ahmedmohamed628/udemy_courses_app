import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class StepTwoScreen extends GetView<CreateCourseOneController> {
  const StepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.06,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "86".tr,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.015),
          child: TextField(
            minLines: 5,
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "87".tr,
                hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}