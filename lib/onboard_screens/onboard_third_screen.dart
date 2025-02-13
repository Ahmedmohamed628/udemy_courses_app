import 'package:flutter/material.dart';

import '../my_theme.dart';

class OnboardThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/onboard_image3.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            'Discover New Courses',
            style: TextStyle(
                color: MyTheme.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'Learning adventure awaits you, dive into a course today and learn.',
              style: TextStyle(
                  color: MyTheme.greyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          // SizedBox(height: MediaQuery.of(context).size.height*0.04,),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Continue',
          //       style: TextStyle(color: MyTheme.whiteColor, fontSize: 18, fontWeight: FontWeight.w400)),
          //   style: ElevatedButton.styleFrom(backgroundColor: MyTheme.primaryColor,
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), padding: EdgeInsets.all(15)),
          // ),
        ],
      ),
    );
  }
}
