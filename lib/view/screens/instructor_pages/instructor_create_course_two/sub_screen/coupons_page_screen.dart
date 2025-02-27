import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../core/const/app_colors/app_colors.dart';


class CouponsPageScreen extends GetView<CreateCourseTwoController> {
  const CouponsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.005,
            vertical: ScreenSize.screenheight * 0.005),
        decoration: BoxDecoration(border: Border.all()),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenSize.screenWidth * 0.01,
              vertical: ScreenSize.screenheight * 0.01),
          child: Container(
            margin: EdgeInsets.only(top: ScreenSize.screenheight * 0.02),
            child: Column(
              spacing: ScreenSize.screenheight * 0.03,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        label: "Coupon",
                        size: 18.sp,
                        weight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      color: AppColors.greyColor,
                    )
                  ],
                ),
                Row(
                  spacing: ScreenSize.screenWidth * 0.03,
                  children: [
                    Text(
                      "Coupon Code",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.sp))),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ScreenSize.screenWidth * 0.47,
                      child: CustomDropDownWithLabelRow(
                          label: "Coupon Status",
                          dropDownItems: [
                            DropdownMenuEntry(value: "free", label: "Free")
                          ],
                          initSelection: "free"),
                    ),
                    SizedBox(
                      width: ScreenSize.screenWidth * 0.47,
                      child: CustomDropDownWithLabelRow(
                          label: "No of users",
                          dropDownItems: [
                            DropdownMenuEntry(
                                value: "limited", label: "Limited")
                          ],
                          initSelection: "limited"),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    label: "Coupon Validity Period",
                    size: 18.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                Row(
                  spacing: ScreenSize.screenWidth * 0.05,
                  children: [
                    CustomText(
                      label: "Coupon Start Date",
                      size: 12.sp,
                      weight: FontWeight.w400,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: controller.couponStartDate.value,
                        onTap: () {
                          controller.selectStartDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range_rounded)),
                      ),
                    )
                  ],
                ),
                Row(
                  spacing: ScreenSize.screenWidth * 0.065,
                  children: [
                    CustomText(
                      label: "Coupon End Date",
                      size: 12.sp,
                      weight: FontWeight.w400,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: controller.couponEndDate.value,
                        onTap: () {
                          controller.selectEndDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range_rounded)),
                      ),
                    )
                  ],
                ),
                CouponsScreenDoubleBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDropDownWithLabelRow extends StatelessWidget {
  final String label;
  final String initSelection;
  final List<DropdownMenuEntry<String>> dropDownItems;
  const CustomDropDownWithLabelRow(
      {super.key,
      required this.label,
      required this.dropDownItems,
      required this.initSelection});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: ScreenSize.screenheight * 0.003,
      children: [
        CustomText(label: label),
        Expanded(
          child: DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: ScreenSize.screenWidth * 0.025),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(10.sp))),
              initialSelection: initSelection,
              dropdownMenuEntries: dropDownItems),
        )
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String label;
  final double size;
  final FontWeight weight;

  const CustomText(
      {super.key,
      required this.label,
      this.size = 12,
      this.weight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: size, fontWeight: weight, color: AppColors.blackColor),
    );
  }
}

class CouponsScreenDoubleBtn extends GetView<CreateCourseTwoController> {
  const CouponsScreenDoubleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CostumBtn(
          btnFunc: () {},
          btnColor: AppColors.whiteColor,
          textColor: AppColors.primaryColor,
          text: "Edit Coupon",
          borderColor: AppColors.primaryColor,
        ),
        CostumBtn(
          btnFunc: () {},
          btnColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          text: "Create Coupon",
        ),
      ],
    );
  }
}

class CostumBtn extends GetView<CreateCourseTwoController> {
  final Color btnColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final void Function() btnFunc;
  const CostumBtn({
    super.key,
    required this.btnColor,
    required this.textColor,
    required this.text,
    required this.btnFunc,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: ScreenSize.screenWidth * 0.016,
          vertical: ScreenSize.screenheight * 0.02),
      child: MaterialButton(
        textColor: textColor,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.screenWidth * 0.06,
            vertical: ScreenSize.screenheight * 0.02),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(10.sp)),
        color: btnColor,
        onPressed: btnFunc,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}