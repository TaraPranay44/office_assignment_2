import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/services/data_models/auth_home_page_data.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/routes.dart';
import 'package:project/src/utils/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomePage homePage = HomePage(); //Homepage data

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Container(
          padding: EdgeInsets.only(top: 20.h),
          child: AppBar(
            title: homePage.titleImage,
            centerTitle: true,
            backgroundColor: white,
            
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(
              height: 60.h,
            ),
            homePage.centerImage,
            SizedBox(
              height: 70.h,
            ),
            Text(
              homePage.heading,
              style: headingText,
            ),
             SizedBox(
              height: 15.h,
            ),
            Text(
              homePage.subHeading1,
              style: subHeadingText,
            ),
            Text(
              homePage.subHeading2,
              style: subHeadingText,
            ),
             SizedBox(
              height: 60.h,
            ),
            MyButton(
                backgroundColor: buttonColor1,
                foregroundColor: white,
                text: Text(
                  homePage.signUpButtonText,
                  style: buttonLightText,
                ),
                width: 360.w,
                height: 55.h,
                onPressed: () {
                  Navigator.pushNamed(context, signUpPageRoute);
                }),
                // SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  homePage.lowerText,
                  style: outerText,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, signInPageRoute);
                    // print('height is $screenHeight');
                    // print('width is $screenWidth');
                  },
                  child: Text(
                    homePage.textButton,
                    style: textButton,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
