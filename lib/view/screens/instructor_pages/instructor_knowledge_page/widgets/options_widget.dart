import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../controller/instructor_controllers/instructor_knowledge_controller/instructor_knowledge_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class OptionsWidget extends GetView<InstructorKnowledgeController> {
  final String text;
  final String val;
  final void Function(String?) onChangeFunc;
  final String groupVal;
  const OptionsWidget(
      {super.key,
      required this.text,
      required this.val,
      required this.onChangeFunc,
      required this.groupVal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          activeColor: AppColors.primaryColor,
          value: val,
          groupValue: groupVal,
          onChanged: onChangeFunc,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor),
        ),
      ],
    );
  }
}