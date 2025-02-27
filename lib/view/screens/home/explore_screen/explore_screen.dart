import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy_courses_project/view/screens/home/explore_screen/top_courses_section.dart';

import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../core/const/app_images/app_images.dart';
import 'category_tabs.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment(1, 0), children: [
          Image.asset(AppImages.exploreOne,
              width: double.infinity, fit: BoxFit.fill),
          Image.asset(AppImages.exploreTwo),
        ]),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All skills you need in one place.',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('See all',
                          style: TextStyle(
                              color: AppColors.primaryColor,
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
                      imagePath: AppImages.topCoursesOne,
                      title:
                          'How the internet works and Web Development Process',
                      price: 'EGP 3,000 ',
                      rating: '4.4',
                      reviewCount: '1200k',
                    ),
                    TopCoursesSection(
                      imagePath: AppImages.topCoursesTwo,
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