import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/routes/app_routes_names.dart';

class SignupController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  register() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        Get.offNamed(AppRoutesNames.verifyEmailSignUp,
            arguments: {"email": emailController.text});
      } else {
        Get.snackbar("57".tr, "58".tr);
      }
    }
  }

  initControllers() {
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  disposeControllers() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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