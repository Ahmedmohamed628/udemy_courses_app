import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../controller/onbording_controller/onboarding_controller.dart';
import '../../../../core/class/screen_size/screen_size.dart';
import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../data/const_data/onboarding_data.dart';
import '../widgets/onboarding_widget.dart';


class OnboardScreens extends GetView<OnboardingController> {
  const OnboardScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        actions: [
           TextButton(
                  onPressed: () {
                    controller.goToSelectionPage();
                  },
                  child: Text(
                    '4'.tr,
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  )),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: onBoardingData.length,
            itemBuilder: (context, index) => OnboardingWidget(
              index: index,
            ),
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.onChangePage(index);
            },
          ),
          Container(
            alignment: Alignment(0, 0.1),
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: onBoardingData.length,
              effect: JumpingDotEffect(
                  activeDotColor: AppColors.primaryColor, verticalOffset: 10.h),
            ),
          ),
          SizedBox(
            height: ScreenSize.screenheight * 0.1,
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: ElevatedButton(
                onPressed: () {
                  //navigate to authentication
                  controller.goToNextPage();
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(300.w),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                    padding: EdgeInsets.all(15.sp)),
                child: Obx(
                  () => Text(controller.buttonText.value,
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400)),
                )),
          ),
        ],
      ),
    );
  }
}