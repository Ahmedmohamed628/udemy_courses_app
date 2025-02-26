import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:udemy_courses_project/my_theme.dart';

class ListTileCategory extends StatelessWidget {
  String title;
  GestureTapCallback onTapFunction;

  ListTileCategory({required this.title, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapFunction,
      title: Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: MyTheme.blackColor)),
      tileColor: MyTheme.whiteColor,
      trailing: Icon(LineAwesomeIcons.angle_right_solid,
          color: MyTheme.greyColor, size: 16),
      minTileHeight: MediaQuery.of(context).size.height * 0.03,
    );
  }
}
