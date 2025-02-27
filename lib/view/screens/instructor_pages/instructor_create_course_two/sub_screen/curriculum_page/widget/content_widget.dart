import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';
import '../../../widgets/radio_two_widget.dart';
import 'curriculum_tabbar_widget_two.dart';
import 'downloadable_video_widget.dart';


class ContentWidget extends GetView<CreateCourseTwoController> {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Content",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor),
            ),
            Row(
              children: [
                Obx(
                  () => RadioTwoWidget(
                      groupValue: controller.contentGroupVal.value,
                      radioFunc: (value) {
                        controller.getContentValue(value!);
                      },
                      text: "Video",
                      val: "video"),
                ),
                Obx(() => RadioTwoWidget(
                    groupValue: controller.contentGroupVal.value,
                    radioFunc: (value) {
                      controller.getContentValue(value!);
                    },
                    text: "File",
                    val: "file")),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
          ],
        ),
        Column(
          spacing: ScreenSize.screenheight * 0.015,
          children: [
            CurriculumTabBarWidget(),
            SizedBox(
              height: ScreenSize.screenheight * 0.1,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.curriculumTabController,
                children: [
                  DownloadableVideo(),
                  DownloadableVideo(),
                  DownloadableVideo(),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin:
              EdgeInsets.symmetric(vertical: ScreenSize.screenheight * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                textColor: AppColors.primaryColor,
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: ScreenSize.screenWidth * 0.25,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenSize.screenheight * 0.012,
                      horizontal: ScreenSize.screenWidth * 0.01),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.sp)),
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}