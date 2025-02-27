import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class RadioTwoWidget extends GetView<CreateCourseTwoController> {
  final String text;

  final String val;
  final String groupValue;
  final double textSize;
  final void Function(String?) radioFunc;
  const RadioTwoWidget({
    super.key,
    this.textSize = 16,
    required this.text,
    required this.val,
    required this.groupValue,
    required this.radioFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          activeColor: AppColors.primaryColor,
          value: val,
          groupValue: groupValue,
          onChanged: (value) {
            controller.getContentValue(value!);
          },
        ),
        Text(
          text,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}