import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class StepFourScreen extends GetView<CreateCourseOneController> {
  const StepFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: ScreenSize.screenheight * 0.01,
        children: [
          StepFourWidget(
            title: "What are the requirements for taking your course?",
          ),
          StepFourWidget(
            title: "What will students learn in your course?",
          ),
          StepFourWidget(
            title: "Who is this course for?",
          ),
        ],
      ),
    );
  }
}

class StepFourWidget extends StatelessWidget {
  final String title;

  const StepFourWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.005,
      children: [
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.015),
          child: TextField(
            minLines: 3,
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "... Write your question",
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