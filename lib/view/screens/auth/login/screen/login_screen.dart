import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controllers/login_controller/login_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';
import '../../../../../core/const/routes/app_routes_names.dart';
import '../../register/widgets/auth_btn.dart';
import '../widgets/login_inputs.dart';
import '../widgets/remember_forget.dart';


class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          '13'.tr,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.05,
            vertical: ScreenSize.screenheight * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //email text field
              LoginInputs(),
              //remember me & forget password
              RememberForget(
                forgetFunc: () {
                  Get.offNamed(AppRoutesNames.forgetPassword);
                },
              ),
              SizedBox(
                height: ScreenSize.screenheight * 0.02,
              ),

              //sign in button
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp)),
                    padding: EdgeInsets.all(15.sp)),
                child: Text('13'.tr,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: ScreenSize.screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Divider(
                    color: AppColors.outlineTextFormColor,
                    thickness: 2.h,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.screenWidth * 0.03),
                    child: Text(
                      '14'.tr,
                      style: TextStyle(
                          color: AppColors.placeholderColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: AppColors.outlineTextFormColor,
                    thickness: 2.h,
                  )),
                ],
              ),
              SizedBox(
                height: ScreenSize.screenheight * 0.02,
              ),
              //google button
              AuthBtn(
                  func: () {},
                  image: AppImages.google,
                  text: "23".tr),
              SizedBox(
                height: ScreenSize.screenheight * 0.02,
              ),
              //apple button
              AuthBtn(
                  func: () {},
                  image: AppImages.apple,
                  text: "24".tr),
              // don't have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("15".tr,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor)),
                  TextButton(
                      onPressed: () {
                        // navigate to register screen
                        Get.offNamed(AppRoutesNames.signUpScreen);
                      },
                      child: Text('16'.tr,
                          style: TextStyle(
                              fontSize: 17,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}