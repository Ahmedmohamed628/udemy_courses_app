import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controllers/reset_password_controller/reset_pw_controller.dart';
import '../../../../core/class/screen_size/screen_size.dart';
import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../core/const/app_images/app_images.dart';
import '../../../../core/functions/inputs_func.dart';
import '../../../core_widgets/custom_text.dart';
import '../../../core_widgets/custom_text_form_field.dart';


class ResetPassword extends GetView<ResetPwController> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPwController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.02),
          child: Form(
            key: controller.formKey,
            child: SizedBox(
              width: ScreenSize.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.resetPassword),
                  CustomText(
                    text: "54".tr,
                    size: 28.sp,
                    weight: FontWeight.bold,
                    textColor: AppColors.primaryColor,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "55".tr,
                          size: 16.sp,
                          weight: FontWeight.w400,
                          textColor: AppColors.greyColor,
                        ),
                      ),
                      CustomTextFormField(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: AppColors.primaryColor,
                        ),
                        isObscure: true,
                        isPassword: true,
                        controller: controller.passwordController,
                        validator: (value) {
                          return validInput(value!, 8, 30, "password", "19".tr);
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "27".tr,
                          size: 16.sp,
                          weight: FontWeight.w400,
                          textColor: AppColors.greyColor,
                        ),
                      ),
                      CustomTextFormField(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: AppColors.primaryColor,
                        ),
                        isObscure: true,
                        isPassword: true,
                        controller: controller.confirmPasswordController,
                        validator: (value) {
                          return validInput(
                              value!, 8, 30, "confirm_password", "27".tr);
                        },
                      ),
                    ],
                  ),
                  MaterialButton(
                    color: AppColors.primaryColor,
                    textColor: AppColors.whiteColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenSize.screenWidth * 0.2,
                      vertical: ScreenSize.screenheight * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                    onPressed: () {
                      controller.goToSuccessPage();
                    },
                    child: CustomText(
                      text: "56".tr,
                      size: 16.sp,
                      weight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}