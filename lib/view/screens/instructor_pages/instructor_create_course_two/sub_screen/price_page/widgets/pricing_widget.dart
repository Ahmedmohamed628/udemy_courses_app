import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../landing_page_screen.dart';


class PricingWidget extends StatelessWidget {
  const PricingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.06,
      children: [
        ListTile(
          title: Text(
            "Set a price for your course",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: ScreenSize.screenWidth * 0.25,
              child: CustomDropDownWithLabel(
                  label: "Currency",
                  dropDownItems: [
                    DropdownMenuEntry(value: "usd", label: "USD")
                  ],
                  initSelection: "usd"),
            ),
            SizedBox(
              width: ScreenSize.screenWidth * 0.25,
              child: CustomDropDownWithLabel(
                  label: "Price Tier",
                  dropDownItems: [
                    DropdownMenuEntry(value: "free", label: "Free")
                  ],
                  initSelection: "free"),
            ),
          ],
        ),
      ],
    );
  }
}