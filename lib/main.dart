import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/language_controller/language_controller.dart';
import 'core/class/binding/init_binding.dart';
import 'core/const/language/language.dart';
import 'core/const/routes/app_routes.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    print("Error $details");
  };
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController langController = LanguageController();
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            getPages: routes,
            debugShowCheckedModeBanner: false,
            initialBinding: InitialBinding(),
            locale: langController.initLang,
            translations: AppLanguages(),
          );
        });
  }
}