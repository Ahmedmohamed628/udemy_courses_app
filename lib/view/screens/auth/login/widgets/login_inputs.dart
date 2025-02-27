import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controller/auth_controllers/login_controller/login_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/functions/inputs_func.dart';
import '../../../../core_widgets/custom_text_form_field.dart';

class LoginInputs extends GetView<LoginController> {
  const LoginInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '17'.tr,
              style:
                  TextStyle(color: AppColors.placeholderColor, fontSize: 18.sp),
            ),
            CustomTextFormField(
              hint: '18'.tr,
              controller: controller.emailController,
              isObscure: false,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.greyColor,
              ),
              validator: (text) {
                return validInput(text!, 10, 100, "email", "17".tr);
              },
            ),
            //password text field
            Text(
              '19'.tr,
              style: TextStyle(color: AppColors.placeholderColor, fontSize: 18),
            ),
            CustomTextFormField(
              hint: '20'.tr,
              controller: controller.passwordController,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.primaryColor,
              ),
              isObscure: true,
              isPassword: true,
              filled: true,
              filledColor: AppColors.backgroundShadeColor,
              validator: (text) {
                return validInput(text!, 8, 50, "password", "19".tr);
              },
            ),
          ],
        ));
  }
}