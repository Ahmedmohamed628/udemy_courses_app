import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../controller/auth_controllers/verify_reset_pw_controller/verify_resetpw_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';
import '../../../../core_widgets/custom_text.dart';
import '../../check_email/widgets/otp_widget.dart';


class VerifyResetPassword extends GetView<VerifyResetpwController> {
  const VerifyResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyResetpwController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              LineAwesomeIcons.angle_left_solid,
              color: AppColors.primaryColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: ScreenSize.screenheight * 0.02,
          children: [
            Image.asset(AppImages.verify),
            CustomText(
              text: "${"46".tr}${controller.option}",
              size: 28.sp,
              weight: FontWeight.bold,
              textColor: AppColors.primaryColor,
            ),
            CustomText(
              text: "${"47".tr}${controller.option}",
              size: 16.sp,
              weight: FontWeight.bold,
              textColor: AppColors.greyColor,
            ),
            OtpWidget(
              onSubmitCode: (value) {
                controller.checkVerifyCode(value);
              },
            ),
            Obx(
              () => CustomText(
                text: "${"48".tr}${controller.start}",
                size: 16.sp,
                weight: FontWeight.bold,
                textColor: AppColors.greyColor,
              ),
            ),
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
                controller.goToSuccessPage();
              },
              child: CustomText(
                text: "49".tr,
                size: 16.sp,
                weight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "50".tr,
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textColor: AppColors.greyColor,
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: "51".tr,
                    size: 12.sp,
                    weight: FontWeight.w500,
                    textColor: AppColors.primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}