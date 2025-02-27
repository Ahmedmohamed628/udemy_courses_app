import 'dart:async';
import 'package:get/get.dart';
import '../../../core/const/routes/app_routes_names.dart';

class VerifySignupController extends GetxController {
  late String email;
  late Timer timer;
  String verifyCode = "";
  RxInt start = 30.obs;

  getUserEmail() {
    email = Get.arguments['email'];
  }

  checkVerifyCode(String value) {
    verifyCode = value;
  }

  goToSuccessPage() {
    if (verifyCode != "") {
      Get.offNamed(AppRoutesNames.successSignUp);
    } else {
      Get.snackbar("52".tr, "53".tr);
    }
  }

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

  @override
  void onInit() {
    getUserEmail();
    startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}