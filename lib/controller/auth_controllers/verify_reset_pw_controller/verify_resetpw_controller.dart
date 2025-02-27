import 'dart:async';
import 'package:get/get.dart';
import '../../../core/const/routes/app_routes_names.dart';

class VerifyResetpwController extends GetxController {
  RxInt start = 30.obs;
  late Timer timer;
  String verifyCode = "";
  late String link;
  late String option;

  startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start--;
        }
      },
    );
  }

  getCodeMethod() {
    link = Get.arguments['link'];
    option = Get.arguments['option'];
  }

  checkVerifyCode(String value) {
    verifyCode = value;
  }

  goToSuccessPage() {
    if (verifyCode != "") {
      Get.offNamed(AppRoutesNames.resetPassword);
    } else {
      Get.snackbar("52".tr, "53".tr);
    }
  }

  @override
  void onInit() {
    getCodeMethod();
    startTimer();
    super.onInit();
  }
}