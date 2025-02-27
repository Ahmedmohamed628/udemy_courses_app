import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../../../../controller/auth_controllers/forget_password_controller/forget_pw_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';
import '../../../../../core/functions/inputs_func.dart';
import '../../../../core_widgets/custom_text.dart';
import '../../../../core_widgets/custom_text_form_field.dart';
import '../widgets/forget_options.dart';


class ForgetPassword extends GetView<ForgetPwController> {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPwController());
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                LineAwesomeIcons.angle_left_solid,
                color: AppColors.primaryColor,
              ))),
      body: SingleChildScrollView(
        child: Column(
          spacing: ScreenSize.screenheight * 0.01,
          children: [
            SizedBox(
                height: ScreenSize.screenheight * 0.3,
                child: Image.asset(AppImages.verify)),
            CustomText(
              text: "34".tr,
              size: 28.sp,
              weight: FontWeight.bold,
              textColor: AppColors.primaryColor,
            ),
            CustomText(
              text: "35".tr,
              size: 14.sp,
              weight: FontWeight.bold,
              textColor: AppColors.greyColor,
            ),
            Form(
              key: controller.formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenSize.screenWidth * 0.04),
                child: Obx(() => CustomTextFormField(
                      isObscure: false,
                      prefixIcon: Image.asset(
                          color: AppColors.primaryColor,
                          controller.emailVal.value
                              ? AppImages.resetEmail
                              : AppImages.resetPhone),
                      hint: "36".tr,
                      label: "37".tr,
                      controller: controller.textController,
                      validator: (value) {
                        return validInput(
                            value!,
                            controller.emailVal.value ? 10 : 11,
                            controller.emailVal.value ? 100 : 14,
                            controller.emailVal.value ? "email" : "phone",
                            controller.emailVal.value ? "17".tr : "38".tr);
                      },
                    )),
              ),
            ),
            Obx(
              () => ForgetOptions(
                borderColor: controller.emailborderColor.value,
                imageColor: controller.emailborderColor.value,
                val: controller.emailVal.value,
                image: AppImages.resetEmail,
                title: "39".tr,
                subtitle: "40".tr,
                checkBoxFunc: (value) {
                  controller.emailSelected(value!);
                },
              ),
            ),
            Obx(
              () => ForgetOptions(
                borderColor: controller.phoneborderColor.value,
                imageColor: controller.phoneborderColor.value,
                val: controller.phoneVal.value,
                image: AppImages.resetPhone,
                title: "41".tr,
                subtitle: "42".tr,
                checkBoxFunc: (value) {
                  controller.phoneSelected(value!);
                },
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
                controller.sendCode();
              },
              child: CustomText(
                text: "43".tr,
                size: 16.sp,
                weight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}