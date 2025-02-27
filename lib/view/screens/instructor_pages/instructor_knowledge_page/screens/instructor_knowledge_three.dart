import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/instructor_knowledge_controller/instructor_knowledge_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/routes/app_routes_names.dart';
import '../widgets/custom_btn.dart';
import '../widgets/options_widget.dart';


class InstructorKnowledgeThree extends GetView<InstructorKnowledgeController> {
  const InstructorKnowledgeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: ScreenSize.screenheight * 0.2,
        title: Text(
          "62".tr,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: ScreenSize.screenWidth,
          child: Column(
            spacing: ScreenSize.screenheight * 0.02,
            children: [
              Text(
                textAlign: TextAlign.center,
                "75".tr,
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenSize.screenWidth * 0.03),
                child: Column(
                  spacing: ScreenSize.screenheight * 0.02,
                  children: [
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueThree.value,
                        val: "one",
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueThree, value!);
                        },
                        text: "76".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueThree.value,
                        val: "two",
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueThree, value!);
                        },
                        text: "77".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueThree.value,
                        val: "three",
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueThree, value!);
                        },
                        text: "78".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueThree.value,
                        val: "four",
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueThree, value!);
                        },
                        text: "73".tr)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBtn(
                      borderColor: AppColors.primaryColor,
                      text: "74".tr,
                      btnFunc: () {
                        Get.offNamed(AppRoutesNames.instructorKnowledgeTwo);
                      },
                      btnColor: AppColors.whiteColor,
                      btnTextColor: AppColors.primaryColor),
                  CustomBtn(
                      text: "68".tr,
                      btnFunc: () {
                        Get.offAllNamed(
                            AppRoutesNames.instructorCreateCourseOne);
                      },
                      btnColor: AppColors.primaryColor,
                      btnTextColor: AppColors.whiteColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}