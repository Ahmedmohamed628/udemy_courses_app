import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/instructor_knowledge_controller/instructor_knowledge_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/routes/app_routes_names.dart';
import '../widgets/custom_btn.dart';
import '../widgets/options_widget.dart';


class InstructorKnowledgeOne extends GetView<InstructorKnowledgeController> {
  const InstructorKnowledgeOne({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InstructorKnowledgeController());
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
                "63".tr,
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
                        groupVal: controller.groupValueOne.value,
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueOne, value!);
                        },
                        val: "one",
                        text: "64".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueOne.value,
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueOne, value!);
                        },
                        val: "two",
                        text: "65".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueOne.value,
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueOne, value!);
                        },
                        val: "three",
                        text: "66".tr)),
                    Obx(() => OptionsWidget(
                        groupVal: controller.groupValueOne.value,
                        onChangeFunc: (value) {
                          controller.changeValue(
                              controller.groupValueOne, value!);
                        },
                        val: "four",
                        text: "67".tr)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomBtn(
                      text: "68".tr,
                      btnFunc: () {
                        Get.toNamed(AppRoutesNames.instructorKnowledgeTwo);
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