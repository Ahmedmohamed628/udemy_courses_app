import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controller/auth_controllers/forget_password_controller/forget_pw_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../core_widgets/custom_text.dart';


class ForgetOptions extends GetView<ForgetPwController> {
  final String image;
  final String title;
  final String subtitle;
  final void Function(bool?) checkBoxFunc;
  final bool val;
  final Color borderColor;
  final Color imageColor;

  const ForgetOptions(
      {super.key,
      required this.imageColor,
      required this.borderColor,
      required this.val,
      required this.title,
      required this.subtitle,
      required this.checkBoxFunc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.04),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 2.sp),
          borderRadius: BorderRadius.circular(10.sp)),
      child: ListTile(
        leading: Image.asset(
          image,
          color: imageColor,
        ),
        title: CustomText(text: title, size: 16.sp, weight: FontWeight.w400),
        subtitle: CustomText(
            text: subtitle,
            size: 12.sp,
            textColor: AppColors.greyColor,
            weight: FontWeight.w400),
        trailing: Checkbox(
          value: val,
          onChanged: checkBoxFunc,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          activeColor: AppColors.primaryColor,
          side: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
    );
  }
}