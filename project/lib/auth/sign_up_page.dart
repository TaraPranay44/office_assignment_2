import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/back_arrow.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/face_book_button.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/google_button.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_text_field.dart';
import 'package:project/Widgets/local_widgets/auth_widgets/get_started_button.dart';
import 'package:project/services/data_models/sign_up_page_data.dart';
import 'package:project/services/functions/pivacy_policy.dart';
import 'package:project/utils/constants.dart';
import 'package:project/utils/styles.dart';

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
      appBar: AppBar(
        leading: backArrow(context),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Text(signUpPage.heading, style: headingText),
            const SizedBox(
              height: 17,
            ),
            facebookButton(context),
            const SizedBox(
              height: 7,
            ),
            googleButton(context),
            const SizedBox(
              height: 10,
            ),
            textFieldHeading,
            const SizedBox(
              height: 10,
            ),
            MyTextField(hintText: signUpPage.textFieldOne),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hintText: signUpPage.textFieldOTwo),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hintText: signUpPage.textFieldThree),
            ListTile(
              title: Row(
                children: [
                  Text(
                    signUpPage.checkBox1,
                    style: mediumBlackTextButton,
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
              trailing: const Checkbox(value: false, onChanged: null),
            ),
            getStarted(context),
          ],
        ),
      ),
    );
  }
}
