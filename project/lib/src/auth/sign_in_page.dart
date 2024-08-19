import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/back_arrow.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/face_book_button.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/google_button.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_text_field.dart';
import 'package:project/src/Widgets/local_widgets/auth_widgets/log_in_button.dart';
import 'package:project/src/services/data_models/sign_in_page_data.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/constants.dart';
import 'package:project/src/utils/routes.dart';
import 'package:project/src/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySignInPage extends StatelessWidget {
  final SignInPage signInPage = SignInPage(); //Sign in page data
  MySignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: Padding(
          padding:  EdgeInsets.only(top: 14.h,left: 3.w),
          child: AppBar(
            backgroundColor: white,
            leading: backArrow(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(signInPage.heading, style: headingText),
            SizedBox(
              height: 23.h,
            ),
            facebookButton(context),
            SizedBox(
              height: 18.h,
            ),
            googleButton(context),
            SizedBox(
              height: 40.h,
            ),
            textFieldHeading,
            SizedBox(
              height: 40.h,
            ),
            MyTextField(hintText: signInPage.hintTextFieldOne),
           SizedBox(
              height: 15.h,
            ),
            MyTextField(hintText: signInPage.hintTextFieldTwo),
            SizedBox(
              height: 35.h,
            ),
            logInButton(context),
            forgotPassword,
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
      bottomSheet: Container(
        color: white,
        child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    signInPage.bottomTExt1,
                    style: outerText,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, signUpPageRoute);
                      },
                      child: Text(
                        signInPage.bottomTExt2,
                        style: textButton,
                      ))
                ],
              ),
      ),
    );
  }
}
