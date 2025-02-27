import 'package:flutter/material.dart';
import 'package:udemy_courses_project/home/my_courses_screen/courses_container.dart';

import '../../my_theme.dart';

class MyCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
              child: Text('My Courses',
                  style: TextStyle(
                      color: MyTheme.blackShadeColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500))),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          //1st container
          CoursesContainer(
            title: 'UX/UI Design Diploma',
            courseImage: 'assets/images/course_pic1.png',
            courseStatus: 'Online Live Course',
            courseType: 'Design',
            isCourseDone: false,
          ),

          CoursesContainer(
            title: 'React JS Course',
            courseImage: 'assets/images/course_pic2.png',
            courseStatus: 'Recorded Course',
            courseType: 'Development',
            isCourseDone: true,
          ),
        ],
      ),
    );
  }
}
