import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/class/screen_size/screen_size.dart';
import '../../../../../../../core/const/app_colors/app_colors.dart';


class SectionWidget extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String hintText;
  final void Function() editFunc;
  final void Function() deleteFunc;
  final void Function() addFunc;
  final void Function() cancelFunc;
  final void Function() saveFunc;

  const SectionWidget(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.hintText,
      required this.editFunc,
      required this.deleteFunc,
      required this.addFunc,
      required this.cancelFunc,
      required this.saveFunc});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor),
                ),
                IconButton(
                    onPressed: editFunc,
                    icon: Icon(
                      Icons.edit_outlined,
                      size: 20.sp,
                      color: AppColors.blackColor,
                    )),
                IconButton(
                    onPressed: deleteFunc,
                    icon: Icon(Icons.delete_forever_outlined,
                        color: AppColors.blackColor, size: 20.sp)),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenSize.screenWidth * 0.015,
                    vertical: ScreenSize.screenheight * 0.001),
                child: TextButton.icon(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.sp),
                            side: BorderSide(
                                color: AppColors.primaryColor, width: 2.sp)))),
                    icon: Icon(
                      Icons.add,
                      size: 20.sp,
                      color: AppColors.primaryColor,
                    ),
                    onPressed: addFunc,
                    label: Text(
                      subTitle,
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    )),
              ),
              border: OutlineInputBorder()),
        ),
        Container(
          margin:
              EdgeInsets.only(top: ScreenSize.screenheight * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                textColor: AppColors.primaryColor,
                onPressed: cancelFunc,
                child: Text(
                  "Cancel",
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: ScreenSize.screenWidth * 0.25,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenSize.screenheight * 0.012,
                      horizontal: ScreenSize.screenWidth * 0.01),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.sp)),
                  color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  onPressed: saveFunc,
                  child: Text(
                    "Save",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}