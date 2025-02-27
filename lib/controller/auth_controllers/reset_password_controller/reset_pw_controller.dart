import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/routes/app_routes_names.dart';

class ResetPwController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  initControllers() {
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  goToSuccessPage() {
    if (formKey.currentState!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        Get.offNamed(AppRoutesNames.successResetPassword);
      } else {
        Get.snackbar("57".tr, "58".tr);
      }
    }
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}