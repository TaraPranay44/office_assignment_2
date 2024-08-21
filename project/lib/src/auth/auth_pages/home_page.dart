import 'package:flutter/material.dart'; // Importing Flutter's material design package
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive sizing
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart'; // Custom button widget
import 'package:project/src/services/data_models/authentication_data_models/auth_home_page_data.dart'; // Data model for the home page
import 'package:project/src/utils/colors.dart'; // Color constants
import 'package:project/src/utils/routes.dart'; // Route constants for navigation
import 'package:project/src/utils/styles.dart'; // Style constants for text and buttons

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Constructor for the StatefulWidget

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // Creates the mutable state for this widget
}

class _MyHomePageState extends State<MyHomePage> {
  HomePage homePage =
      HomePage(); // Data model instance for the home page content

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white, // Background color of the screen
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h), // Height of the app bar
        child: Container(
          padding: EdgeInsets.only(
              top:
                  20.h), // Padding to ensure content isn't too close to the top
          child: AppBar(
            title: homePage.titleImage, // Title of the app bar
            centerTitle: true, // Centers the title
            backgroundColor: white, // Background color of the app bar
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h, // Space at the top of the screen
            ),
            homePage.centerImage, // Center image from the data model
            SizedBox(
              height: 70.h, // Space between the center image and heading
            ),
            Text(
              homePage.heading, // Main heading text from the data model
              style: headingText, // Style for the heading text
            ),
            SizedBox(
              height: 15.h, // Space between heading and subheadings
            ),
            Text(
              homePage.subHeading1, // First subheading text from the data model
              style: subHeadingText, // Style for the first subheading text
            ),
            Text(
              homePage
                  .subHeading2, // Second subheading text from the data model
              style: subHeadingText, // Style for the second subheading text
            ),
            SizedBox(
              height: 60.h, // Space before the button
            ),
            MyButton(
                backgroundColor:
                    buttonColor1, // Background color for the button
                foregroundColor: white, // Text color for the button
                text: Text(
                  homePage.signUpButtonText, // Button text from the data model
                  style: buttonLightText, // Style for the button text
                ),
                width: 360.w, // Width of the button
                height: 55.h, // Height of the button
                onPressed: () {
                  Navigator.pushNamed(context,
                      signUpPageRoute); // Navigate to the sign-up page on button press
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Center-aligns the row's children horizontally
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Center-aligns the row's children vertically
              children: [
                Text(
                  homePage
                      .lowerText, // Lower text next to the button from the data model
                  style: outerText, // Style for the lower text
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        signInPageRoute); // Navigate to the sign-in page on text button press
                  },
                  child: Text(
                    homePage
                        .textButton, // Text on the text button from the data model
                    style: textButton, // Style for the text button
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
