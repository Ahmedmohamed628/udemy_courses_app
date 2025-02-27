import 'package:get/get.dart';

import '../../../view/screens/auth/check_email/screen/verify_email_signup.dart';
import '../../../view/screens/auth/forget_password/screen/forget_password.dart';
import '../../../view/screens/auth/login/screen/login_screen.dart';
import '../../../view/screens/auth/register/screen/signup_screen.dart';
import '../../../view/screens/auth/reset_password/reset_password.dart';
import '../../../view/screens/auth/success_reset_password/success_reset_pw.dart';
import '../../../view/screens/auth/success_signup/success_signup.dart';
import '../../../view/screens/auth/verify_reset_pw/screen/verify_reset_pw.dart';
import '../../../view/screens/home/home_screen.dart';
import '../../../view/screens/instructor_pages/instructor_create_course_one/screen/create_course_screen_one.dart';
import '../../../view/screens/instructor_pages/instructor_create_course_two/screen/create_course_screen_two.dart';
import '../../../view/screens/instructor_pages/instructor_knowledge_page/screens/instructor_knowledge_one.dart';
import '../../../view/screens/instructor_pages/instructor_knowledge_page/screens/instructor_knowledge_three.dart';
import '../../../view/screens/instructor_pages/instructor_knowledge_page/screens/instructor_knowledge_two.dart';
import '../../../view/screens/onboard_screens/screen/onboard_screens.dart';
import '../../../view/screens/selections_screen/selection_screens.dart';
import '../../../view/screens/splash_screen/splash_screen.dart';
import 'app_routes_names.dart';



List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutesNames.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
      name: AppRoutesNames.onBoardingScreen,
      page: () => OnboardScreens(),
      // middlewares: [OnBoardMiddleware()]
      ),
  GetPage(
    name: AppRoutesNames.loginScreen,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: AppRoutesNames.signUpScreen,
    page: () => RegisterScreen(),
  ),
  GetPage(
    name: AppRoutesNames.selectionScreens,
    page: () => SelectionScreens(),
  ),
  GetPage(
    name: AppRoutesNames.verifyEmailSignUp,
    page: () => VerifyEmailSignUp(),
  ),
  GetPage(
    name: AppRoutesNames.successSignUp,
    page: () => SuccessSignup(),
  ),
  GetPage(
    name: AppRoutesNames.forgetPassword,
    page: () => ForgetPassword(),
  ),
  GetPage(
    name: AppRoutesNames.verifyForgetPass,
    page: () => VerifyResetPassword(),
  ),
  GetPage(
    name: AppRoutesNames.resetPassword,
    page: () => ResetPassword(),
  ),
  GetPage(
    name: AppRoutesNames.successResetPassword,
    page: () => SuccessResetPw(),
  ),
  GetPage(
    name: AppRoutesNames.instructorKnowledgeOne,
    page: () => InstructorKnowledgeOne(),
  ),
  GetPage(
    name: AppRoutesNames.instructorKnowledgeTwo,
    page: () => InstructorKnowledgeTwo(),
  ),
  GetPage(
    name: AppRoutesNames.instructorKnowledgeThree,
    page: () => InstructorKnowledgeThree(),
  ),
  GetPage(
    name: AppRoutesNames.instructorCreateCourseOne,
    page: () => InstructorCreateCourseOne(),
  ),
  GetPage(
    name: AppRoutesNames.instructorCreateCourseTwo,
    page: () => InstructorCreateCoursetwo(),
  ),
  GetPage(
    name: AppRoutesNames.homeScreen,
    page: () => HomeScreen(),
  ),
];