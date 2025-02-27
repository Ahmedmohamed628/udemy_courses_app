import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/const/app_colors/app_colors.dart';

class AddBtn extends StatelessWidget {
  final void Function() addFunc;
  final String text;
  const AddBtn({super.key, required this.addFunc, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.sp),
                  side:
                      BorderSide(color: AppColors.primaryColor, width: 2.sp)))),
          icon: Icon(
            Icons.add,
            size: 20.sp,
            color: AppColors.primaryColor,
          ),
          onPressed: addFunc,
          label: Text(
            text,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}