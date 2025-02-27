import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controllers/signup_controller/signup_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';
import '../../../../../core/const/routes/app_routes_names.dart';
import '../widgets/auth_btn.dart';
import '../widgets/sign_in_widget.dart';
import '../widgets/signup_btn.dart';
import '../widgets/signup_inputs.dart';


class RegisterScreen extends GetView<SignupController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            '16'.tr,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SignupInputs(),
            SignupBtn(func: () => controller.register()),
            SizedBox(
              height: ScreenSize.screenheight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Divider(
                  color: AppColors.outlineTextFormColor,
                  thickness: 2,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '14'.tr,
                    style: TextStyle(
                        color: AppColors.placeholderColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: AppColors.outlineTextFormColor,
                  thickness: 2,
                )),
              ],
            ),
            SizedBox(
              height: ScreenSize.screenheight * 0.01,
            ),
            //google button
            AuthBtn(
                func: () {},
                image: AppImages.google,
                text: "23".tr),
            SizedBox(
              height: ScreenSize.screenheight * 0.01,
            ),
            //apple button
            AuthBtn(
                func: () {},
                image: AppImages.apple,
                text: "24".tr),
            // don't have account
            SignInWidget(func: () => Get.offNamed(AppRoutesNames.loginScreen))
          ],
        )
        //remember me & forget password

        //sign up button
        );
  }
}