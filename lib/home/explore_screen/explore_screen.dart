import 'package:flutter/material.dart';
import 'package:udemy_courses_project/home/explore_screen/category_tabs.dart';
import 'package:udemy_courses_project/home/explore_screen/top_courses_section.dart';
import 'package:udemy_courses_project/my_theme.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment(1, 0), children: [
          Image.asset('assets/images/explore_photo.png',
              width: double.infinity, fit: BoxFit.fill),
          Image.asset('assets/images/explore_photo2.png'),
          ]),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                'All skills you need in one place.',
                style: TextStyle(
                    fontSize: 24,
                    color: MyTheme.primaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                style: TextStyle(
                    fontSize: 16,
                    color: MyTheme.blackShadeColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 16,
                          color: MyTheme.blackShadeColor,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                      child: Text('See all',
                          style: TextStyle(
                              color: MyTheme.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                ],
                ),
              CategoryTabs(),
              Text('Top courses in Development',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TopCoursesSection(
                      imagePath: 'assets/images/top_courses1.png',
                      title:
                          'How the internet works and Web Development Process',
                      price: 'EGP 3,000 ',
                      rating: '4.4',
                      reviewCount: '1200k',
                    ),
                    TopCoursesSection(
                      imagePath: 'assets/images/top_courses2.png',
                      title:
                          'Pre Programming everything you need to know before you code',
                      price: 'EGP 3,000 ',
                      rating: '4.4',
                      reviewCount: '1200k',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
