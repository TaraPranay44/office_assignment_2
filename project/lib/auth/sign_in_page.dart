import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/back_arrow.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/face_book_button.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/google_button.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_text_field.dart';
import 'package:project/Widgets/local_widgets/auth_widgets/log_in_button.dart';
import 'package:project/services/data_models/sign_in_page_data.dart';
import 'package:project/utils/constants.dart';
import 'package:project/utils/styles.dart';

class MySignInPage extends StatelessWidget {
  final SignInPage signInPage = SignInPage(); //Sign in page data
  MySignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: backArrow(context)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Text(signInPage.heading, style: headingText),
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
            MyTextField(hintText: signInPage.hintTextFieldOne),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hintText: signInPage.hintTextFieldTwo),
            const SizedBox(
              height: 20,
            ),
            logInButton(context),
            forgotPassword,
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  signInPage.bottomTExt1,
                  style: outerText,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up_page');
                    },
                    child: Text(
                      signInPage.bottomTExt2,
                      style: textButton,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
