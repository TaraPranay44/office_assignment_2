import 'package:flutter/material.dart';
import 'package:project/src/utils/styles.dart';

Widget sectionTitle(BuildContext context, String title, String allPage) {
  return Row(
    mainAxisAlignment:
        MainAxisAlignment.spaceBetween, // Space the title and button apart
    children: [
      // Display the section title
      Text(
        title,
        style: sectionTitleStyle, // Apply the custom style for the title
      ),

      // "See all" button that navigates to the specified page
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, allPage); // Navigate to the given page
        },
        child: Text(
          'See all',
          style: seeAll, // Apply the custom style for the button text
        ),
      ),
    ],
  );
}
