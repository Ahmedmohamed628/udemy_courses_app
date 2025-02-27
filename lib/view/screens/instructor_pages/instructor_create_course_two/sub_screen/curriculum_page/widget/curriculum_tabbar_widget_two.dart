import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';


class CurriculumTabBarWidget extends GetView<CreateCourseTwoController> {
  const CurriculumTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.all(0),
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        onTap: (value) {
          // controller.pageIndex.value = value;
          // controller.changePageTitle();
          // controller.changeBtnText();
        },
        indicatorAnimation: TabIndicatorAnimation.linear,
        controller: controller.curriculumTabController,
        labelStyle: TextStyle(
            color: AppColors.primaryColor,
            // letterSpacing: 1,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
        unselectedLabelStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp),
        indicatorColor: AppColors.primaryColor,
        tabs: [
          TabsWidget(
            text: "Downloadable video",
          ),
          TabsWidget(
            text: "File Details",
          ),
          TabsWidget(
            text: "Description",
          ),
        ]);
  }
}

class TabsWidget extends StatelessWidget {
  final String text;

  const TabsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: ScreenSize.screenheight * 0.005,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
        ),
      ),
    );
  }
}