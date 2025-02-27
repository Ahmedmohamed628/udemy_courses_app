import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_images/app_images.dart';


class StepThreeScreen extends GetView<CreateCourseOneController> {
  const StepThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.01,
      children: [
        Text(
          textAlign: TextAlign.center,
          "88".tr,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        DropdownMenu(
          onSelected: (value) {},
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.sp))),
          selectedTrailingIcon: Image.asset(AppImages.arrow),
          width: ScreenSize.screenWidth * 0.9,
          trailingIcon: Icon(Icons.menu),
          initialSelection: "89".tr,
          dropdownMenuEntries: [
            DropdownMenuEntry(
              label: "89".tr,
              value: "development",
              labelWidget: CustomMenuText(
                text: "89".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "90".tr,
              value: "business",
              labelWidget: CustomMenuText(
                text: "90".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "91".tr,
              value: "it",
              labelWidget: CustomMenuText(
                text: "91".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "92".tr,
              value: "office",
              labelWidget: CustomMenuText(
                text: "92".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "93".tr,
              value: "personalDevelopmnet",
              labelWidget: CustomMenuText(
                text: "93".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "94".tr,
              value: "design",
              labelWidget: CustomMenuText(
                text: "94".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "95".tr,
              value: "marketing",
              labelWidget: CustomMenuText(
                text: "95".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "96".tr,
              value: "lifestyle",
              labelWidget: CustomMenuText(
                text: "96".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "97".tr,
              value: "music",
              labelWidget: CustomMenuText(
                text: "97".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "98".tr,
              value: "photography",
              labelWidget: CustomMenuText(
                text: "98".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "99".tr,
              value: "health",
              labelWidget: CustomMenuText(
                text: "99".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "100".tr,
              value: "teaching",
              labelWidget: CustomMenuText(
                text: "100".tr,
              ),
            ),
            DropdownMenuEntry(
              label: "67".tr,
              value: "other",
              labelWidget: CustomMenuText(
                text: "67".tr,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CustomMenuText extends StatelessWidget {
  final String text;
  const CustomMenuText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
    );
  }
}