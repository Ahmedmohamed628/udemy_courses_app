import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../core/const/routes/app_routes_names.dart';
import '../../../main.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isObscure = true;
  RxBool isChecked = false.obs;

  login() {
    if (formKey.currentState?.validate() == true) {
      if (sharedPreferences.getString("role") == "instructor") {
        Get.offAllNamed(AppRoutesNames.instructorKnowledgeOne);
      } else {
        Get.offAllNamed(AppRoutesNames.homeScreen);
      }
    }
  }

  checkBoxVal(bool val) {
    isChecked.value = val;
  }

  initControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }

  @override
  void onClose() {
    disposeControllers();
    super.onClose();
  }
}