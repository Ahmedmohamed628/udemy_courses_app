import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';


class VoucherWidget extends StatelessWidget {
  const VoucherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screenheight * 0.4,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: ScreenSize.screenWidth * 0.005,
            crossAxisSpacing: ScreenSize.screenheight * 0.005),
        children: [
          VoucherCategory(val: "1", children: [
            CostumVoucherText(title: "*Best current price"),
            CostumVoucherText(title: "*Fixed price"),
            CostumVoucherText(title: "*Unlimited quantity"),
            CostumVoucherText(title: "*Limited validity\n period"),
          ]),
          VoucherCategory(val: "2", children: [
            CostumVoucherText(title: "*Custom price"),
            CostumVoucherText(title: "*Select a price\n  between two numbers"),
            CostumVoucherText(title: "*Unlimited quantity"),
            CostumVoucherText(title: "*Limited validity period"),
          ]),
          VoucherCategory(val: "3", children: [
            CostumVoucherText(title: "*Free period"),
            CostumVoucherText(title: "*Unlimited quantity"),
            CostumVoucherText(title: "*Limited validity\n period"),
          ]),
          VoucherCategory(val: "4", children: [
            CostumVoucherText(title: "*Free period"),
            CostumVoucherText(title: "*limited quantity"),
            CostumVoucherText(title: "*Limited validity\n period"),
          ]),
        ],
      ),
    );
  }
}

class CostumVoucherText extends StatelessWidget {
  final String title;
  const CostumVoucherText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
    );
  }
}

class VoucherCategory extends GetView<CreateCourseTwoController> {
  final List<Widget> children;
  final String val;
  const VoucherCategory({super.key, required this.children, required this.val});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Obx(() => Radio(
                  activeColor: AppColors.primaryColor,
                  value: val,
                  groupValue: controller.voucherGroupVal.value,
                  onChanged: (val) {
                    controller.getVoucherValue(val.toString());
                  },
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: ScreenSize.screenheight * 0.018),
          child: Column(
            spacing: ScreenSize.screenheight * 0.02,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        )
      ],
    );
  }
}