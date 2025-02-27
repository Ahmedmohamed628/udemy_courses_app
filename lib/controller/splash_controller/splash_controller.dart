import 'package:get/get.dart';

import '../../core/const/routes/app_routes_names.dart';

class SplashController extends GetxController {


  navigateFunc() async {
    await Future.delayed(Duration(seconds: 4));
    Get.offAllNamed(AppRoutesNames.onBoardingScreen);
  }

  @override
  void onInit() {
    navigateFunc();
    super.onInit();
  }
}