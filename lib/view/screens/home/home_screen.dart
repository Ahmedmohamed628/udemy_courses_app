import 'package:flutter/material.dart';
import 'package:udemy_courses_project/view/screens/home/search_screen/search_screen.dart';
import '../../../core/const/app_colors/app_colors.dart';
import '../../../core/const/app_images/app_images.dart';
import 'cart_screen.dart';
import 'explore_screen/explore_screen.dart';
import 'my_account_screen.dart';
import 'my_courses_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        toolbarHeight: MediaQuery.of(context).size.height * 0.03,
      ),
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.whiteColor,
        elevation: 20,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyColor,
          iconSize: 22,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? Image.asset(AppImages.exploreActive)
                    : Image.asset(AppImages.exploreIcon),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: selectedIndex == 1
                    ? Image.asset(AppImages.searchActive)
                    : Image.asset(AppImages.searchIcon),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: selectedIndex == 2
                    ? Image.asset(AppImages.coursesActive)
                    : Image.asset(AppImages.coursesIcon),
                label: 'My Courses'),
            BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? Image.asset(AppImages.cartActive)
                    : Image.asset(AppImages.cartIcon),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: selectedIndex == 4
                    ? Image.asset(AppImages.myAccountActive)
                    : Image.asset(AppImages.myAccountIcon),
                label: 'My Account'),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
    ExploreScreen(),
    SearchScreen(),
    MyCoursesScreen(),
    CartScreen(),
    MyAccountScreen(),
  ];
}