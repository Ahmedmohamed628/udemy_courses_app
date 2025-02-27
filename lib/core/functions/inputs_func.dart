import 'package:get/get.dart';

validInput(String val, int min, int max, String type, String feildName) {
  if (val.isEmpty || val.trim().isEmpty) {
    return ("28".tr + feildName);
  }
  if (val.length < min) {
    return "$feildName ${"29".tr}$min";
  }

  if (val.length > max) {
    return "$feildName${'30'.tr}$max";
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "31".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "32".tr;
    }
  }
}
