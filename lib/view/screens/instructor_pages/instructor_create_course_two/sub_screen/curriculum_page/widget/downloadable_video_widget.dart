import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';


class DownloadableVideo extends StatelessWidget {
  const DownloadableVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "No Selected File",
          suffixIcon: Container(
            margin: EdgeInsets.symmetric(
                horizontal: ScreenSize.screenWidth * 0.015,
                vertical: ScreenSize.screenheight * 0.01),
            child: TextButton.icon(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        side: BorderSide(
                            color: AppColors.primaryColor, width: 2.sp)))),
                onPressed: () {},
                label: Text(
                  "Upload",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                )),
          ),
          border: OutlineInputBorder()),
    );
  }
}