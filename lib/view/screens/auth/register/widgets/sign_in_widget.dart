import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/const/app_colors/app_colors.dart';

class SignInWidget extends StatelessWidget {
  final void Function() func ;
  const SignInWidget({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("33".tr,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor)),
        TextButton(
            onPressed: func,
            child: Text('13'.tr,
                style: TextStyle(
                    fontSize: 17,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600)))
      ],
    );
  }
}