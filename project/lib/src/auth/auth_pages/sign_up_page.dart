import 'package:flutter/material.dart'; // Importing Flutter's material design package
import 'package:project/src/Widgets/global_widgets/auth_widgets/back_arrow.dart'; // Custom widget for back arrow
import 'package:project/src/Widgets/global_widgets/auth_widgets/face_book_button.dart'; // Custom widget for Facebook login button
import 'package:project/src/Widgets/global_widgets/auth_widgets/google_button.dart'; // Custom widget for Google login button
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_text_field.dart'; // Custom text field widget
import 'package:project/src/Widgets/local_widgets/auth_widgets/get_started_button.dart'; // Custom widget for "Get Started" button
import 'package:project/src/services/data_models/authentication_data_models/sign_up_page_data.dart'; // Data model for the sign-up page
import 'package:project/src/services/functions/pivacy_policy.dart'; // Function to handle privacy policy
import 'package:project/src/utils/colors.dart'; // Color constants
import 'package:project/src/utils/constants.dart'; // General constants
import 'package:project/src/utils/styles.dart'; // Style constants for text and buttons
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive sizing

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key}); // Constructor for the StatefulWidget

  @override
  State<MySignUpPage> createState() =>
      _MySignUpPageState(); // Creates the mutable state for this widget
}

class _MySignUpPageState extends State<MySignUpPage> {
  SignUpPage signUpPage =
      SignUpPage(); // Data model instance for the sign-up page content

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
              signUpPage.heading, // Main heading text from the data model
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
              hintText: signUpPage
                  .textFieldOne, // Hint text for the first text field from the data model
            ),
            SizedBox(
              height: 15.h, // Space between the first and second text field
            ),
            MyTextField(
              hintText: signUpPage
                  .textFieldOTwo, // Hint text for the second text field from the data model
            ),
            SizedBox(
              height: 15.h, // Space between the second and third text field
            ),
            MyTextField(
              hintText: signUpPage
                  .textFieldThree, // Hint text for the third text field from the data model
            ),
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 8.w), // Padding for the checkbox text
                    child: Text(
                      signUpPage
                          .checkBox1, // Checkbox label text from the data model
                      style:
                          mediumBlackTextButton, // Style for the checkbox label text
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      privacyPolicy(
                          context); // Handle privacy policy navigation or display
                    },
                    child: Text(
                      signUpPage
                          .checkBox2, // Text for the privacy policy button from the data model
                      style:
                          textButton, // Style for the privacy policy button text
                    ),
                  )
                ],
              ),
              trailing: Transform.scale(
                scale: 1.5, // Scale for the checkbox
                child: const Checkbox(
                  value: false, // Initial value of the checkbox
                  onChanged: null, // Disables interaction with the checkbox
                ),
              ),
            ),
            SizedBox(
              height: 10.h, // Space before the "Get Started" button
            ),
            getStarted(context), // Custom "Get Started" button
          ],
        ),
      ),
    );
  }
}
