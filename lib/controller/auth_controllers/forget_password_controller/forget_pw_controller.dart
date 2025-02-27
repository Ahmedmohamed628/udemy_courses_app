import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/app_colors/app_colors.dart';
import '../../../core/const/routes/app_routes_names.dart';


class ForgetPwController extends GetxController {
  RxBool emailVal = true.obs;
  RxBool phoneVal = false.obs;
  Rx<Color> emailborderColor = AppColors.primaryColor.obs;
  Rx<Color> phoneborderColor = AppColors.greyColor.obs;
  late TextEditingController textController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  emailSelected(bool val) {
    emailVal.value = val;
    if (val) {
      if (phoneVal.value) {
        phoneVal.value = false;
        phoneborderColor.value = AppColors.greyColor;
        emailborderColor.value = AppColors.primaryColor;
      } else {
        emailborderColor.value = AppColors.primaryColor;
      }
    } else {
      emailborderColor.value = AppColors.greyColor;
    }
  }

  phoneSelected(bool val) {
    phoneVal.value = val;
    if (val) {
      if (emailVal.value) {
        emailVal.value = false;
        emailborderColor.value = AppColors.greyColor;
        phoneborderColor.value = AppColors.primaryColor;
      } else {
        phoneborderColor.value = AppColors.primaryColor;
      }
    } else {
      phoneborderColor.value = AppColors.greyColor;
    }
  }

  sendCode() {
    if (formKey.currentState!.validate()) {
      if (emailVal.value) {
        Get.offNamed(AppRoutesNames.verifyForgetPass,
            arguments: {"link": textController.text, "option": "17".tr});
      } else if (phoneVal.value) {
        Get.offNamed(AppRoutesNames.verifyForgetPass,
            arguments: {"link": textController.text, "option": "38".tr});
      } else {
        Get.snackbar("44".tr, "45".tr);
      }
    }
  }

  initControllers() {
    textController = TextEditingController();
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}