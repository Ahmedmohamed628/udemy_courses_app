import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';

class LanguageController extends GetxController {
  Locale initLang = sharedPreferences.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(sharedPreferences.getString("lang")!);

  void changeLanguage(String langCode) {
    Locale language = Locale(langCode);

    Get.updateLocale(language);
  }
}