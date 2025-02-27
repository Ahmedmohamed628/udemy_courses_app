import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../core/const/app_colors/app_colors.dart';

// ignore: must_be_immutable
class ListTileCategory extends StatelessWidget {
  String title;
  GestureTapCallback onTapFunction;

  ListTileCategory({super.key, required this.title, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapFunction,
      title: Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor)),
      tileColor: AppColors.whiteColor,
      trailing: Icon(LineAwesomeIcons.angle_right_solid,
          color: AppColors.greyColor, size: 16),
      minTileHeight: MediaQuery.of(context).size.height * 0.03,
    );
  }
}