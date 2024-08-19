import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  const MyTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.w, right: 20.w),
      child: TextField(
        
        decoration: InputDecoration(
          
            filled: true,
            fillColor: textFieldColor1,
            hintText: hintText,
            hintStyle: TextStyle(color: black26),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.w),
              borderSide: BorderSide(color: textFieldtext, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.w),
              borderSide:  BorderSide(color: textFieldborder, width: 1),
            ),
            contentPadding:
                 EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h)),
      ),
    );
  }
}
