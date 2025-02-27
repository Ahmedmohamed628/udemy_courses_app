import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';


class PromotionWidget extends StatelessWidget {
  const PromotionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: ScreenSize.screenheight * 0.05,
      children: [
        ListTile(
          title: Text(
            "Offer Conditions",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "Each time a student uses this link through the instructor, the instructor will receive 80% and the platform will receive 20%. However, when the student accesses the course directly on the platform, the platform will receive 50% and the instructor will receive 50%.",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Row(
          spacing: ScreenSize.screenWidth * 0.05,
          children: [
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0, horizontal: ScreenSize.screenWidth * 0.03),
                  hintText: "Copy Link",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.sp)
                  )),
            )),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.sp)
              ),
              padding: EdgeInsets.symmetric(
                  vertical: ScreenSize.screenWidth * 0.035),
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              onPressed: () {},
              child: Text("Paste"),
            )
          ],
        ),
      ],
    );
  }
}