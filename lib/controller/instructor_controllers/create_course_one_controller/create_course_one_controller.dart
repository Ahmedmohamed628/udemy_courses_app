import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/routes/app_routes_names.dart';

class CreateCourseOneController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  RxString btnText = "68".tr.obs;

  RxInt pageIndex = 0.obs;
  RxString groupVal = "recorded".obs;

  changeBtnText() {
    if (pageIndex.value == 3) {
      btnText.value = "6".tr;
    } else {
      btnText.value = "68".tr;
    }
  }

  nextPage() {
    if (pageIndex.value < 3) {
      pageIndex.value++;
      tabController.animateTo(pageIndex.value);
    } else {
      Get.offNamed(AppRoutesNames.instructorCreateCourseTwo);
    }
    changeBtnText();
  }

  getValue(String value) {
    groupVal.value = value;
  }

  initControllers() {
    tabController = TabController(
        length: 4, vsync: this, animationDuration: Duration(milliseconds: 500));
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}