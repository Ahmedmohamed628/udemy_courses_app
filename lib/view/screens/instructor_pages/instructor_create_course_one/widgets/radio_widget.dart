import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class RadioWidget extends GetView<CreateCourseOneController> {
  final String text;

  final String val;
  const RadioWidget({super.key, required this.text, required this.val});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => Radio(
            activeColor: AppColors.primaryColor,
            value: val,
            groupValue: controller.groupVal.value,
            onChanged: (value) {
              controller.getValue(value.toString());
            },
          ),
        ),
        Text(text , style: TextStyle(fontSize: 16.sp , fontWeight: FontWeight.w400),),
      ],
    );
  }
}