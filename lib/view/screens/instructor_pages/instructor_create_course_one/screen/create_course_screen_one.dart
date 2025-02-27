import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:udemy_courses_project/view/screens/instructor_pages/instructor_create_course_one/screen/step_four_screen.dart';
import 'package:udemy_courses_project/view/screens/instructor_pages/instructor_create_course_one/screen/step_one_screen.dart';
import 'package:udemy_courses_project/view/screens/instructor_pages/instructor_create_course_one/screen/step_three_screen.dart';
import 'package:udemy_courses_project/view/screens/instructor_pages/instructor_create_course_one/screen/step_two_screen.dart';

import '../../../../../controller/instructor_controllers/create_course_one_controller/create_course_one_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../widgets/drop_down_menu_widget.dart';
import '../widgets/screen_header.dart';
import '../widgets/tabbar_widget.dart';


class InstructorCreateCourseOne extends GetView<CreateCourseOneController> {
  const InstructorCreateCourseOne({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateCourseOneController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: ScreenSize.screenheight * 0.12,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios,
                size: 20.sp, color: AppColors.blackColor)),
        actions: [
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.05),
            child: DropDownMenuWidget(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScreenHeader(),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenSize.screenheight * 0.015,
                  horizontal: ScreenSize.screenWidth * 0.05),
              child: CreateCourserTabBar(),
            ),
            SizedBox(
              height: ScreenSize.screenheight * 0.45,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: [
                  StepOneScreen(),
                  StepTwoScreen(),
                  StepThreeScreen(),
                  StepFourScreen(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: ScreenSize.screenheight * 0.02),
              child: MaterialButton(
                textColor: AppColors.whiteColor,
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenSize.screenWidth * 0.3,
                    vertical: ScreenSize.screenheight * 0.02),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp)),
                color: AppColors.primaryColor,
                onPressed: () {
                  controller.nextPage();
                },
                child: Obx(() => Text(
                      controller.btnText.value,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}