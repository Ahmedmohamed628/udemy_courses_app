import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../widgets/radio_widget.dart';


class StepOneScreen extends GetView<CreateCourseOneController> {
  const StepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.04,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "81".tr,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        Column(
          spacing: ScreenSize.screenheight * 0.02,
          children: [
            RadioWidget(text: "82".tr, val: "recorded"),
            RadioWidget(
                text: "83".tr, val: "live"),
            RadioWidget(
                text: "84".tr,
                val: "recordedLive"),
            RadioWidget(text: "85".tr, val: "questions"),
          ],
        ),
        
      ],
    );
  }
}