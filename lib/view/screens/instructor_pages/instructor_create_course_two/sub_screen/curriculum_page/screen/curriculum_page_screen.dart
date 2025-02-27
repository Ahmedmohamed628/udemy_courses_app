import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';
import '../widget/add_btn.dart';
import '../widget/content_widget.dart';
import '../widget/section_widget.dart';

class CurriculumScreen extends GetView<CreateCourseTwoController> {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: ScreenSize.screenheight * 0.04,
        children: [
          Card(
            margin: EdgeInsets.symmetric(
                vertical: ScreenSize.screenheight * 0.03,
                horizontal: ScreenSize.screenWidth * 0.015),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp),
                side: BorderSide(color: AppColors.greyColor, width: 0.5.sp)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenSize.screenWidth * 0.01),
              child: Column(
                children: [
                  SectionWidget(
                    mainTitle: "Section 1",
                    subTitle: "Lecture Titles",
                    hintText: "Section Name",
                    addFunc: () {
                      controller.showLictureSection();
                    },
                    cancelFunc: () {},
                    deleteFunc: () {},
                    editFunc: () {},
                    saveFunc: () {},
                  ),
                  Card(
                      margin: EdgeInsets.symmetric(
                        vertical: ScreenSize.screenheight * 0.03,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp),
                          side: BorderSide(
                              color: AppColors.greyColor, width: 0.5.sp)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenSize.screenWidth * 0.01),
                        child: Column(
                          children: [
                            Obx(() => Visibility(
                                  visible: controller.showLicture.value,
                                  child: SectionWidget(
                                    mainTitle: "Lecture 1:",
                                    subTitle: "Content",
                                    hintText: "Lecture Title",
                                    addFunc: () {
                                      // controller.showContentSection();
                                    },
                                    cancelFunc: () {},
                                    deleteFunc: () {},
                                    editFunc: () {},
                                    saveFunc: () {},
                                  ),
                                )),
                            Obx(() => Visibility(
                                visible: controller.showLicture.value,
                                child: ContentWidget())),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: ScreenSize.screenheight * 0.005,
                                  horizontal: ScreenSize.screenWidth * 0.02),
                              child: AddBtn(
                                text: "Lecture",
                                addFunc: () {},
                              ),
                            )
                          ],
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenSize.screenheight * 0.005,
                        horizontal: ScreenSize.screenWidth * 0.03),
                    child: AddBtn(
                      text: "Section",
                      addFunc: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}