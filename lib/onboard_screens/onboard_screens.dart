import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:udemy_courses_project/my_theme.dart';
import 'package:udemy_courses_project/onboard_screens/onboard_first_screen.dart';
import 'package:udemy_courses_project/onboard_screens/onboard_second_screen.dart';
import 'package:udemy_courses_project/onboard_screens/onboard_third_screen.dart';
import 'package:udemy_courses_project/onboard_screens/selection_screens.dart';

class OnboardScreens extends StatefulWidget {
  static const String routeName = 'onboard-screens';
  String buttonText = 'Skip';
  int currentPageIndex = 0;
  PageController pageController = PageController();

  @override
  State<OnboardScreens> createState() => _OnboardScreensState();
}

class _OnboardScreensState extends State<OnboardScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
        actions: [
          widget.currentPageIndex == 2
              ? SizedBox()
              : TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SelectionScreens.routeName);
                  },
                  child: Text(
                    widget.buttonText,
                    style: TextStyle(
                        color: MyTheme.primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  )),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PageView(
            controller: widget.pageController,
            onPageChanged: (index) {
              widget.currentPageIndex = index;
              if (index == 2) {
                // buttonText = '';
              } else {
                widget.buttonText = 'Skip';
              }
              setState(() {});
            },
            children: [
              OnboardFirstScreen(),
              OnboardSecondScreen(),
              OnboardThirdScreen(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.1),
            child: SmoothPageIndicator(
              controller: widget.pageController,
              count: 3,
              effect: JumpingDotEffect(
                  activeDotColor: MyTheme.primaryColor, verticalOffset: 10),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            alignment: Alignment(0, 0.63),
            child: ElevatedButton(
              onPressed: () {
                //navigate to authentication
                widget.currentPageIndex == 2
                    ? Navigator.of(context)
                        .pushNamed(SelectionScreens.routeName)
                    : widget.pageController.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: Text(
                  widget.currentPageIndex == 2 ? 'Get Started' : 'Continue',
                  style: TextStyle(
                      color: MyTheme.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(350),
                  backgroundColor: MyTheme.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(15)),
            ),
          ),
        ],
      ),
    );
  }
}
