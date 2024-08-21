import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

// Custom AppBar widget for the Explore screen.
PreferredSizeWidget exploreAppBar(BuildContext context) {
  return AppBar(
    // Sets the background color of the AppBar.
    backgroundColor: white,
    
    // Title centered within the AppBar.
    title: Center(
      child: Text(
        'Find Products',
        style: TextStyle(
          color: eText1,
          fontFamily: 'Gilroy', // Custom font for the title text.
          fontWeight: FontWeight.w300, // Light font weight.
          fontSize: 18, // Font size for the title.
        ),
      ),
    ),
    
    // Prevents the automatic back button from being shown.
    automaticallyImplyLeading: false,
  );
}
