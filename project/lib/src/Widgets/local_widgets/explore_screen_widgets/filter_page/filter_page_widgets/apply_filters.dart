  import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

Widget buildApplyButton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Handle apply filter action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor1,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'Apply Filter',
          style: TextStyle(
            fontSize: 14,
            color: fText2,
          ),
        ),
      ),
    );
  }
