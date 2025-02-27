import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../controller/instructor_controllers/create_course_two_controller/create_course_two_controller.dart';
import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../widgets/pricing_widget.dart';
import '../widgets/promotion_widget.dart';
import '../widgets/voucher_widget.dart';

class PricingPageScreen extends GetView<CreateCourseTwoController> {
  const PricingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenSize.screenWidth * 0.01,
      ),
      decoration: BoxDecoration(border: Border.all()),
      child: 
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.01),
        child: Column(
          // spacing: ScreenSize.screenheight * 0.01,
          children: [
            Row(
              children: [
                DropdownMenu(
                    onSelected: (value) {
                      controller.getDropDownValue(
                          controller.pricingValue, value!);
                      // controller.changePricingPageContent();

                    },
                    inputDecorationTheme:
                        InputDecorationTheme(border: InputBorder.none),
                    initialSelection: "pricing",
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: "pricing", label: "Pricing"),
                      DropdownMenuEntry(value: "promotion", label: "Promotion"),
                      DropdownMenuEntry(
                          value: "vouchers", label: "Purchase Vouchers"),
                    ]),
              ],
            ),
            Obx(() => controller.pricingValue.value == "pricing"
                ? PricingWidget()
                : controller.pricingValue.value == "promotion"
                    ? PromotionWidget()
                    : VoucherWidget())
          ],
        ),
      ),
    );
  }
}