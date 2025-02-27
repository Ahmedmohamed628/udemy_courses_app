import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../instructor_create_course_one/widgets/drop_down_menu_widget.dart';
import '../sub_screen/coupons_page_screen.dart';
import '../sub_screen/curriculum_page/screen/curriculum_page_screen.dart';
import '../sub_screen/landing_page_screen.dart';
import '../sub_screen/price_page/screen/pricing_page_screen.dart';
import '../sub_screen/schedule_screen.dart';
import '../widgets/main_screen_btns.dart';
import '../widgets/screen_two_header.dart';
import '../widgets/tabbar_widget_two.dart';


class InstructorCreateCoursetwo extends GetView<CreateCourseTwoController> {
  const InstructorCreateCoursetwo({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateCourseTwoController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: ScreenSize.screenheight * 0.08,
        leading: IconButton(
            onPressed: () {
              controller.baskToCourseOneScreen ();
            },
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
            ScreenTwoHeader(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: ScreenSize.screenheight * 0.015,
              ),
              child: CreateCourserTabBarTwo(),
            ),
            SizedBox(
              height: ScreenSize.screenheight * 0.5,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: [
                  CurriculumScreen(),
                  ScheduleScreen(),
                  LandingPageScreen(),
                  PricingPageScreen(),
                  CouponsPageScreen(),
                ],
              ),
            ),
            Obx(
              () => controller.toogleBtns(
                  MainScreenSingleBtn(), MainScreenDoubleBtn()),
            )
          ],
        ),
      ),
    );
  }
}