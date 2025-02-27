import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../core/class/screen_size/screen_size.dart';
import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../core/const/app_images/app_images.dart';
import '../../../../core/const/routes/app_routes_names.dart';
import '../../../core_widgets/custom_text.dart';


class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              LineAwesomeIcons.angle_left_solid,
              color: AppColors.primaryColor,
            )),
      ),
      body: SizedBox(
        width: ScreenSize.screenWidth,
        child: Column(
          spacing: ScreenSize.screenheight * 0.04,
          children: [
            Image.asset(AppImages.success),
            Column(
              spacing: ScreenSize.screenheight * 0.005,
              children: [
              CustomText(
              text: "59".tr,
              size: 24.sp,
              weight: FontWeight.w500,
              textColor: AppColors.primaryColor,
            ),
            CustomText(
              text: "61".tr,
              size: 12.sp,
              weight: FontWeight.w400,
              textColor: AppColors.greyColor,
            ),
            ],),
            MaterialButton(
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              padding: EdgeInsets.symmetric(
                horizontal: ScreenSize.screenWidth * 0.3,
                vertical: ScreenSize.screenheight * 0.02,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp)),
              onPressed: () {
                Get.offAllNamed(AppRoutesNames.loginScreen);
              },
              child: CustomText(
                text: "5".tr,
                size: 16.sp,
                weight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}