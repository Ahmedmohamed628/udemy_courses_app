import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controllers/signup_controller/signup_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/functions/inputs_func.dart';
import '../../../../core_widgets/custom_text_form_field.dart';


class SignupInputs extends GetView<SignupController> {
  const SignupInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  //name text field
                  Text(
                    '25'.tr,
                    style: TextStyle(
                        color: AppColors.placeholderColor, fontSize: 18),
                  ),
                  CustomTextFormField(
                    isObscure: false,
                    hint: '26'.tr,
                    controller: controller.nameController,
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: AppColors.greyColor,
                    ),
                    validator: (text) {
                      return validInput(text!, 5, 20, "name", "26".tr);
                    },
                  ),
                  //email text field
                  Text(
                    '17'.tr,
                    style: TextStyle(
                        color: AppColors.placeholderColor, fontSize: 18),
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
                    style: TextStyle(
                        color: AppColors.placeholderColor, fontSize: 18),
                  ),
                  CustomTextFormField(
                    hint: '20'.tr,
                    controller: controller.passwordController,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.primaryColor,
                    ),
                    isPassword: true,
                    filled: true,
                    filledColor: AppColors.backgroundShadeColor,
                    validator: (text) {
                      return validInput(text!, 10, 50, "password", "19".tr);
                    },
                  ),
                  // confirm password
                  Text(
                    '27'.tr,
                    style: TextStyle(
                        color: AppColors.placeholderColor, fontSize: 18),
                  ),
                  CustomTextFormField(
                    hint: '27'.tr,
                    controller: controller.confirmPasswordController,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.placeholderColor,
                    ),
                    isObscure: true,
                    isPassword: true,
                    validator: (text) {
                      return validInput(
                          text!, 10, 50, "password", "27".tr);
                    },
                  )
                ]))));
  }
}