import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/back_arrow.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/face_book_button.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/google_button.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_text_field.dart';
import 'package:project/src/Widgets/local_widgets/auth_widgets/get_started_button.dart';
import 'package:project/src/services/data_models/sign_up_page_data.dart';
import 'package:project/src/services/functions/pivacy_policy.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/constants.dart';
import 'package:project/src/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  SignUpPage signUpPage = SignUpPage();

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
        // padding: EdgeInsets.all(16),
        child: Column(
          children: [
             SizedBox(
              height: 20.h,
            ),
            Text(signUpPage.heading, style: headingText),
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
            MyTextField(hintText: signUpPage.textFieldOne),
             SizedBox(
              height: 15.h,
            ),
            MyTextField(hintText: signUpPage.textFieldOTwo),
             SizedBox(
              height: 15.h,
            ),
            MyTextField(hintText: signUpPage.textFieldThree),
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 8.w),
                    child: Text(
                      signUpPage.checkBox1,
                      style: mediumBlackTextButton,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        privacyPolicy(context);
                      },
                      child: Text(
                        signUpPage.checkBox2,
                        style: textButton,
                      ))
                ],
              ),
              trailing:  Transform.scale(
                scale: 1.5,
                child: const Checkbox(value: false, onChanged: null,)),
            ),
            SizedBox(height: 10.h,),
            getStarted(context),
          ],
        ),
      ),
      // bottomSheet: Container(color: white,height: 30.h,),
    );
  }
}
