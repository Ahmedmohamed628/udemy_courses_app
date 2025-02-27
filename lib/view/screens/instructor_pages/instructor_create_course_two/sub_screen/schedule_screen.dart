import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class ScheduleScreen extends GetView<CreateCourseTwoController> {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenSize.screenWidth * 0.01,
      ),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        spacing: ScreenSize.screenheight * 0.015,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: ScreenSize.screenWidth * 0.02,
                right: ScreenSize.screenWidth * 0.02,
                top: ScreenSize.screenheight * 0.02),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: ScreenSize.screenWidth * 0.8,
                child: DropdownMenu(
                    onSelected: (value) {
                      controller.getDropDownValue(
                          controller.scheduleValue, value!);
                    },
                    inputDecorationTheme: InputDecorationTheme(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.greyColor),
                            borderRadius: BorderRadius.circular(10.sp))),
                    width: ScreenSize.screenWidth * 0.8,
                    initialSelection: "live",
                    dropdownMenuEntries: [
                      DropdownMenuEntry(
                          value: "live",
                          label: "Live- Streamed Educational Course"),
                      DropdownMenuEntry(
                          value: "recorded",
                          label: "Recorded Live Educational Course"),
                    ]),
              ),
            ),
          ),
          Table(
            children: [
              TableRow(
                  decoration: BoxDecoration(color: AppColors.primaryColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5.sp, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5.sp, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
              TableRow(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5.sp, color: AppColors.greyColor)),
                      color: AppColors.whiteColor),
                  children: [CustomTableRow()]),
            ],
          )
        ],
      ),
    );
  }
}

class CustomTableText extends StatelessWidget {
  final String text;
  const CustomTableText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor),
    );
  }
}

class CustomTableRow extends GetView<CreateCourseTwoController> {
  const CustomTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.01),
      height: ScreenSize.screenheight * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTableText(text: "Course"),
          CustomTableText(text: "Lecturer"),
          CustomTableText(text: "Date"),
          CustomTableText(text: "Time"),
          CustomTableText(text: "Students"),
          Obx(
            () => Visibility(
                visible:
                    controller.scheduleValue.value == "live" ? true : false,
                child: CustomTableText(text: "Status")),
          ),
          CustomTableText(text: "Link"),
          CustomTableText(text: "Registration"),
        ],
      ),
    );
  }
}