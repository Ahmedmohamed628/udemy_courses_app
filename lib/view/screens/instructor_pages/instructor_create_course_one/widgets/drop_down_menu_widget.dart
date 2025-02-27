import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';
import 'menu_text.dart';


class DropDownMenuWidget extends StatelessWidget {
  const DropDownMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        menuStyle: MenuStyle(
            backgroundColor:
                WidgetStatePropertyAll(AppColors.whiteColor.withAlpha(180)),
            shadowColor: WidgetStatePropertyAll(AppColors.primaryColor),
            elevation: WidgetStatePropertyAll(30)),
        selectedTrailingIcon: Icon(Icons.menu_book),
        width: ScreenSize.screenWidth * 0.6,
        trailingIcon: Icon(Icons.menu),
        inputDecorationTheme: InputDecorationTheme(border: InputBorder.none),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: "1",
            label: "",
            labelWidget: Column(
              spacing: ScreenSize.screenheight * 0.01,
              children: [
                MenuText(
                  func: () {},
                  text: "Logo",
                  textWeight: FontWeight.w400,
                  textSize: 16.sp,
                  textColor: AppColors.blackColor,
                ),
                Divider(
                  color: AppColors.primaryColor,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    spacing: ScreenSize.screenWidth * 0.02,
                    children: [
                      Image.asset(
                        AppImages.courses,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Divider(color: AppColors.primaryColor),
                Row(
                  spacing: ScreenSize.screenWidth * 0.02,
                  children: [
                    Image.asset(
                      AppImages.commenication,
                      color: AppColors.primaryColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Communication",
                      textWeight: FontWeight.w500,
                      textSize: 16.sp,
                      textColor: AppColors.primaryColor,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: ScreenSize.screenWidth * 0.08),
                  width: ScreenSize.screenWidth,
                  child: Column(
                    spacing: ScreenSize.screenheight * 0.02,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuText(
                        func: () {},
                        text: "Q & A",
                        textColor: AppColors.blackColor,
                      ),
                      MenuText(
                          func: () {},
                          text: "Messages",
                          textColor: AppColors.blackColor),
                      MenuText(
                          func: () {},
                          text: "Student Suggestions",
                          textColor: AppColors.blackColor),
                    ],
                  ),
                ),
                Divider(color: AppColors.primaryColor),
                Row(
                  spacing: ScreenSize.screenWidth * 0.02,
                  children: [
                    Image.asset(
                      AppImages.performance,
                      color: AppColors.primaryColor,
                    ),
                    MenuText(
                      func: () {},
                      text: "Performance",
                      textWeight: FontWeight.w500,
                      textSize: 16.sp,
                      textColor: AppColors.primaryColor,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: ScreenSize.screenWidth * 0.08),
                  width: ScreenSize.screenWidth,
                  child: Column(
                    spacing: ScreenSize.screenheight * 0.02,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuText(
                          func: () {},
                          text: "Overview",
                          textColor: AppColors.blackColor),
                      MenuText(
                          func: () {},
                          text: "Students",
                          textColor: AppColors.blackColor),
                      MenuText(
                          func: () {},
                          text: "Student Suggestions",
                          textColor: AppColors.blackColor),
                    ],
                  ),
                ),
                Divider(color: AppColors.primaryColor),
              ],
            ),
          ),
        ]);
  }
}