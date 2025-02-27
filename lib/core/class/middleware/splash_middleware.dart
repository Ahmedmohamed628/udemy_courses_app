import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../main.dart';
import '../../const/routes/app_routes_names.dart';


class OnBoardMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences.getInt("visit") == 1) {
      return RouteSettings(name: AppRoutesNames.selectionScreens);
    }
    if (sharedPreferences.getInt("visit") == 2) {
      // return RouteSettings(name: AppRoutesNames.homeScreen);
    }
    return super.redirect(route);
  }
}