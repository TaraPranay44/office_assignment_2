 import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: fText1,
      ),
    );
  }