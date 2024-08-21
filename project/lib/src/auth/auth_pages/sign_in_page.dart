import 'package:flutter/material.dart'; // Importing Flutter's material design package
import 'package:project/src/Widgets/global_widgets/auth_widgets/back_arrow.dart'; // Custom widget for back arrow
import 'package:project/src/Widgets/global_widgets/auth_widgets/face_book_button.dart'; // Custom widget for Facebook login button
import 'package:project/src/Widgets/global_widgets/auth_widgets/google_button.dart'; // Custom widget for Google login button
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_text_field.dart'; // Custom text field widget
import 'package:project/src/Widgets/local_widgets/auth_widgets/log_in_button.dart'; // Custom widget for login button
import 'package:project/src/services/data_models/authentication_data_models/sign_in_page_data.dart'; // Data model for the sign-in page
import 'package:project/src/utils/colors.dart'; // Color constants
import 'package:project/src/utils/constants.dart'; // General constants
import 'package:project/src/utils/routes.dart'; // Route constants for navigation
import 'package:project/src/utils/styles.dart'; // Style constants for text and buttons
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive sizing

class MySignInPage extends StatelessWidget {
  final SignInPage signInPage =
      SignInPage(); // Data model for the sign-in page content

  MySignInPage({super.key}); // Constructor for the StatelessWidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white, // Background color of the screen
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h), // Height of the app bar
        child: Padding(
          padding: EdgeInsets.only(
              top: 14.h, left: 3.w), // Padding around the app bar
          child: AppBar(
            backgroundColor: white, // Background color of the app bar
            leading: backArrow(
                context), // Leading widget for the app bar, a back arrow
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h, // Space at the top of the screen
            ),
            Text(
              signInPage.heading, // Main heading text from the data model
              style: headingText, // Style for the heading text
            ),
            SizedBox(
              height: 23.h, // Space between the heading and Facebook button
            ),
            facebookButton(context), // Custom Facebook login button
            SizedBox(
              height: 18.h, // Space between Facebook and Google buttons
            ),
            googleButton(context), // Custom Google login button
            SizedBox(
              height:
                  40.h, // Space between Google button and text field heading
            ),
            textFieldHeading, // Heading for text fields (assumed to be a constant or widget)
            SizedBox(
              height:
                  40.h, // Space between text field heading and first text field
            ),
            MyTextField(
              hintText: signInPage
                  .hintTextFieldOne, // Hint text for the first text field from the data model
            ),
            SizedBox(
              height: 15.h, // Space between the first and second text field
            ),
            MyTextField(
              hintText: signInPage
                  .hintTextFieldTwo, // Hint text for the second text field from the data model
            ),
            SizedBox(
              height: 35.h, // Space between text fields and login button
            ),
            logInButton(context), // Custom login button
            forgotPassword, // Forgot password widget or text (assumed to be a constant or widget)
            SizedBox(
              height: 20.h, // Space at the bottom of the screen
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: white, // Background color of the bottom navigation bar
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .center, // Center-aligns the row's children horizontally
          crossAxisAlignment: CrossAxisAlignment
              .center, // Center-aligns the row's children vertically
          children: [
            Text(
              signInPage.bottomTExt1, // Bottom text from the data model
              style: outerText, // Style for the bottom text
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    signUpPageRoute); // Navigate to the sign-up page on button press
              },
              child: Text(
                signInPage
                    .bottomTExt2, // Text for the text button from the data model
                style: textButton, // Style for the text button
              ),
            )
          ],
        ),
      ),
    );
  }
}
