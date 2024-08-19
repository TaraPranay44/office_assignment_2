import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

Widget buildCheckboxRow(String title, bool value, ValueChanged<bool?> onChanged) {
    return Row(
      children: [
        Checkbox(
          // fillColor: WidgetStateProperty.all(boxFill),
          
          value: value,
          onChanged: onChanged,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          checkColor: white,
          activeColor: boxFill,
            // side: BorderSide(color: boxBorder,width: 3),
          side: WidgetStateBorderSide.resolveWith(
        (states) => BorderSide(
          color: Colors.green, // Green border when unchecked
          width: 1, // Border thickness
        ),
      ),
      fillColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return boxFill; // Green fill when checked
          }
          return white; // White fill when unchecked
        },
      ),
    
          visualDensity: VisualDensity(horizontal: -3, vertical: -3),
          ),
          
        
        // SizedBox(width: 0),
        
        Text(
          title,
          style: TextStyle(
            fontSize: 14,

          color: value ? boxFill : fText1,
            )
            ),
        
      ],
    );
  }