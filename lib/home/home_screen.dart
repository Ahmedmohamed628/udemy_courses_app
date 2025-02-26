import 'package:flutter/material.dart';
import 'package:udemy_courses_project/home/cart_screen.dart';
import 'package:udemy_courses_project/home/explore_screen/explore_screen.dart';
import 'package:udemy_courses_project/home/my_account_screen.dart';
import 'package:udemy_courses_project/home/my_courses_screen.dart';
import 'package:udemy_courses_project/home/search_screen/search_screen.dart';
import '../my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

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
      backgroundColor: MyTheme.whiteColor,
      bottomNavigationBar: BottomAppBar(
        color: MyTheme.whiteColor,
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
          selectedItemColor: MyTheme.primaryColor,
          unselectedItemColor: MyTheme.greyColor,
          iconSize: 22,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? Image.asset('assets/images/explore_active_icon.png')
                    : Image.asset('assets/images/explore_icon.png'),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: selectedIndex == 1
                    ? Image.asset('assets/images/search_active_icon.png')
                    : Image.asset('assets/images/search_icon.png'),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: selectedIndex == 2
                    ? Image.asset('assets/images/my_courses_active_icon.png')
                    : Image.asset('assets/images/my_courses_icon.png'),
                label: 'My Courses'),
            BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? Image.asset('assets/images/cart_active_icon.png')
                    : Image.asset('assets/images/cart_icon.png'),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: selectedIndex == 4
                    ? Image.asset('assets/images/my_account_active_icon.png')
                    : Image.asset('assets/images/my_account_icon.png'),
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
