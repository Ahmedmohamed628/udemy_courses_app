import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/class/screen_size/screen_size.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final void Function() btnFunc;
  final Color btnColor;
  final Color btnTextColor;
  final Color borderColor;

  const CustomBtn(
      {super.key,
      required this.text,
      required this.btnFunc,
      required this.btnColor,
      required this.btnTextColor,
      this.borderColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.07),
      child: MaterialButton(
        color: btnColor,
        textColor: btnTextColor,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.1,
            vertical: ScreenSize.screenheight * 0.015),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: borderColor, width: ScreenSize.screenWidth * 0.003),
            borderRadius: BorderRadius.circular(5.sp)),
        onPressed: btnFunc,
        child: Text(
          text,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}