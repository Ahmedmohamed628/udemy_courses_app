import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:udemy_courses_project/my_theme.dart';

class CoursesContainer extends StatelessWidget {
  String title;
  String courseImage;
  String courseStatus; //online or offline
  String courseType;
  bool isCourseDone;

  CoursesContainer(
      {required this.title,
      required this.courseImage,
      required this.courseStatus,
      required this.courseType,
      this.isCourseDone = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: MyTheme.containerColor,
        border: Border.all(color: MyTheme.outlineTextFormColor, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(courseImage),
          // course data
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: MyTheme.blackShadeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                courseStatus,
                style: TextStyle(
                    color: MyTheme.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                courseType,
                style: TextStyle(
                    color: MyTheme.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              isCourseDone
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color:
                            MyTheme.containerTextGreenColor.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Completed',
                          style: TextStyle(
                              color: MyTheme.containerTextGreenColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12)),
                    )
                  : Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                        color:
                            MyTheme.containerTextYellowColor.withOpacity(0.18),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Inprogress',
                        style: TextStyle(
                            color: MyTheme.containerTextYellowColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ),
            ],
          ),
          //angle down container
          Container(
            decoration: BoxDecoration(
              color: MyTheme.searchBarColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  LineAwesomeIcons.angle_down_solid,
                )),
          ),
        ],
      ),
    );
  }
}
