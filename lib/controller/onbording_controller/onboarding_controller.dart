import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/const/routes/app_routes_names.dart';
import '../../main.dart';

class OnboardingController extends GetxController {
  RxString buttonText = '5'.tr.obs;
  int currentPageIndex = 0;
  late PageController pageController;

  initControllers() {
    pageController = PageController();
  }

  onChangePage(int val) {
    currentPageIndex = val;
    if (currentPageIndex == 2) {
      buttonText.value = "6".tr;
    } else {
      buttonText.value = "5".tr;
    }
  }

  goToNextPage() {
    currentPageIndex++;
    if (currentPageIndex > 2) {
      goToSelectionPage();
    } else {
      pageController.animateToPage(currentPageIndex,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  goToSelectionPage() {
    sharedPreferences.setInt("visit", 1);
    Get.offNamed(AppRoutesNames.selectionScreens);
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}