import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';



class OtpWidget extends StatelessWidget {
  final void Function(String) onSubmitCode;

  const OtpWidget({super.key, required this.onSubmitCode});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      textStyle: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.symmetric(vertical: ScreenSize.screenheight * 0.015),
      showFieldAsBox: true,
      margin: EdgeInsets.symmetric(horizontal: ScreenSize.screenheight * 0.015),
      enabledBorderColor: AppColors.otpBorder,
      borderRadius: BorderRadius.circular(15.sp),
      fieldWidth: ScreenSize.screenWidth * 0.12,
      fieldHeight: ScreenSize.screenheight * 0.07,
      borderWidth: 4.0,
      onSubmit: onSubmitCode,
      clearText: true,
    );
  }
}