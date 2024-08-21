import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';

// Custom search bar widget used within the Explore screen.
Widget searchBarWidget(BuildContext context) {
  return Expanded(
    // Ensures the search bar takes up available horizontal space.
    child: SizedBox(
      height: 50, // Fixed height for the search bar.
      
      // TextField for user input.
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBar, // Background color of the search bar.
          filled: true, // Ensures the background color is applied.
          
          // Placeholder text style.
          hintText: 'Search Store',
          hintStyle: TextStyle(
            color: eText2, // Color of the placeholder text.
            fontWeight: FontWeight.w500, // Medium font weight.
            fontSize: 14, // Font size of the placeholder text.
          ),
          
          // Icon displayed before the text input area.
          prefixIcon: Image.asset(search),
          
          // Removes the default border.
          border: InputBorder.none,
          
          // Border when the TextField is not focused.
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent, // No visible border when enabled.
            ),
            borderRadius: BorderRadius.circular(10), // Rounded corners.
          ),
          
          // Border when the TextField is focused.
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: buttonColor1, // Border color when focused.
            ),
            borderRadius: BorderRadius.circular(10), // Rounded corners.
          ),
        ),
      ),
    ),
  );
}
