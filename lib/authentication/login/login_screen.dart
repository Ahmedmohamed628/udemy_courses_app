import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../my_theme.dart';
import '../component/custom_text_form_field.dart';
import '../register/register_Screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Login',
          style: TextStyle(
              color: MyTheme.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              LineAwesomeIcons.angle_left_solid,
              color: MyTheme.primaryColor,
            )),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //email text field
                Text(
                  'Email',
                  style:
                      TextStyle(color: MyTheme.placeholderColor, fontSize: 18),
                ),
                CustomTextFormField(
                  hint: 'Enter your email',
                  controller: emailController,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: MyTheme.greyColor,
                  ),
                  validator: (text) {
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(text!);
                    if (text == null || text.trim().isEmpty) {
                      return 'Please enter an email';
                    }
                    if (!emailValid) {
                      return 'PLease enter a valid email';
                    }
                    return null;
                  },
                ),
                //password text field
                Text(
                  'Password',
                  style:
                      TextStyle(color: MyTheme.placeholderColor, fontSize: 18),
                ),
                CustomTextFormField(
                  hint: 'Enter your password',
                  controller: passwordController,
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: MyTheme.primaryColor,
                  ),
                  isObscure: true,
                  isPassword: true,
                  filled: true,
                  filledColor: MyTheme.backgroundShadeColor,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'Please enter a password';
                    }
                    if (text.length < 6) {
                      return 'Password should be at least 6 characters';
                    }
                    return null;
                  },
                ),
                //remember me & forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          activeColor: MyTheme.primaryColor,
                          side:
                              BorderSide(color: MyTheme.primaryColor, width: 2),
                          // checkColor: MyTheme.primaryColor,
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                              color: MyTheme.placeholderColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                //sign in button
                ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text('Sign in',
                      style: TextStyle(
                          color: MyTheme.whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Divider(
                      color: MyTheme.outlineTextFormColor,
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            color: MyTheme.placeholderColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: MyTheme.outlineTextFormColor,
                      thickness: 2,
                    )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                //google button
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google_logo.png',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Text('Continue with Google',
                          style: TextStyle(
                              color: MyTheme.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:
                              BorderSide(color: MyTheme.outlineTextFormColor)),
                      padding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                //apple button
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/apple_logo.png',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Text('Continue with Apple',
                          style: TextStyle(
                              color: MyTheme.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyTheme.whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:
                              BorderSide(color: MyTheme.outlineTextFormColor)),
                      padding: EdgeInsets.all(15)),
                ),
                // don't have account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: MyTheme.blackColor)),
                    TextButton(
                        onPressed: () {
                          // navigate to register screen
                          Navigator.of(context)
                              .pushNamed(RegisterScreen.routeName);
                        },
                        child: Text('Sign up',
                            style: TextStyle(
                                fontSize: 17,
                                color: MyTheme.primaryColor,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() {
    if (formKey.currentState?.validate() == true) {}
  }
}
