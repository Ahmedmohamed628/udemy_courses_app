import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controllers/login_controller/login_controller.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class RememberForget extends GetView<LoginController> {
  final void Function() forgetFunc;
  const RememberForget({super.key, required this.forgetFunc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: controller.isChecked.value,
                onChanged: (value) {
                  controller.checkBoxVal(value!);
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                activeColor: AppColors.primaryColor,
                side: BorderSide(color: AppColors.primaryColor, width: 2),
              ),
            ),
            Text(
              '21'.tr,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        TextButton(
            onPressed: forgetFunc,
            child: Text(
              '22'.tr,
              style: TextStyle(
                  color: AppColors.placeholderColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
            )),
      ],
    );
  }
}