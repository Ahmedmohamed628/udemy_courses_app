import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';
import '../../../../../core/const/app_images/app_images.dart';


class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.015),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: ScreenSize.screenheight * 0.01,
          children: [
            CustomFormFieldData(label: "Course Title"),
            CustomFormFieldData(label: "Description"),
            CustomDropDownWithLabel(
                label: "Language",
                dropDownItems: [
                  DropdownMenuEntry(value: "en", label: "English")
                ],
                initSelection: "en"),
            CustomDropDownWithLabel(
                label: "Category",
                dropDownItems: [
                  DropdownMenuEntry(value: "design", label: "Design")
                ],
                initSelection: "design"),
            CustomDropDownWithLabel(
                label: "Sub Category",
                dropDownItems: [
                  DropdownMenuEntry(value: "web", label: "Web Design")
                ],
                initSelection: "web"),
            CustomDropDownWithLabel(
                label: "Set Level",
                dropDownItems: [
                  DropdownMenuEntry(value: "beginner", label: "Beginner")
                ],
                initSelection: "beginner"),
            CustomDropDownWithLabel(
                label: "Course Duration",
                dropDownItems: [
                  DropdownMenuEntry(value: "month", label: "Month")
                ],
                initSelection: "month"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UploadPhotoVideoWidget(btnText: "Upload Video"),
                UploadPhotoVideoWidget(btnText: "Upload Photo"),
              ],
            ),
            CustomFormFieldData(label: "Lecturer Name"),
            CustomFormFieldData(label: "Description"),
          ],
        ),
      ),
    );
  }
}

class CustomFormFieldData extends StatelessWidget {
  final String label;
  const CustomFormFieldData({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:
              EdgeInsets.symmetric(vertical: ScreenSize.screenheight * 0.009),
          child: CustomText(label: label),
        ),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.sp),
                  borderSide: BorderSide(color: AppColors.greyColor))),
        )
      ],
    );
  }
}

class CustomDropDownWithLabel extends StatelessWidget {
  final String label;
  final String initSelection;
  final List<DropdownMenuEntry<String>> dropDownItems;
  const CustomDropDownWithLabel(
      {super.key,
      required this.label,
      required this.dropDownItems,
      required this.initSelection});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.005,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(label: label),
        DropdownMenu(
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(10.sp))),
            width: ScreenSize.screenWidth,
            initialSelection: initSelection,
            dropdownMenuEntries: dropDownItems)
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String label;
  const CustomText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor),
    );
  }
}

class UploadPhotoVideoWidget extends StatelessWidget {
  final String btnText;
  const UploadPhotoVideoWidget({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.screenWidth * 0.48,
      child: Column(
        children: [
          SizedBox(
              width: ScreenSize.screenWidth * 0.48,
              child: Image.asset(
                AppImages.video,
                fit: BoxFit.contain,
              )),
          SizedBox(
            width: ScreenSize.screenWidth * 0.48,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.sp)),
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              onPressed: () {},
              child: Text(
                btnText,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}