import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/services/data_models/auth_home_page_data.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomePage homePage = HomePage(); //Homepage data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: homePage.titleImage,
        centerTitle: true,
        backgroundColor: white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          homePage.centerImage,
          const SizedBox(
            height: 55,
          ),
          Text(
            homePage.heading,
            style: headingText,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            homePage.subHeading1,
            style: subHeadingText,
          ),
          Text(
            homePage.subHeading2,
            style: subHeadingText,
          ),
          const SizedBox(
            height: 35,
          ),
          MyButton(
              backgroundColor: buttonColor1,
              foregroundColor: white,
              text: Text(
                homePage.signUpButtonText,
                style: buttonLightText,
              ),
              width: 330,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, '/sign_up_page');
              }),
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
                  Navigator.pushNamed(context, '/sign_in_page');
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
    );
  }
}
