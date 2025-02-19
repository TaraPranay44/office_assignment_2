import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/utils/images.dart';

class HomePage {
  Image titleImage = Image.asset(
    silentMoon,
    height: 60.h,
  );
  Image centerImage = Image.asset(
    girlSitting,
    height: 300.h,
    width: 900.w,
  );
  var heading = 'We are what we do';
  var subHeading1 = 'Thousands of people are using silent moon';
  var subHeading2 = 'for smalls meditation';
  var signUpButtonText = 'SIGN UP';
  var lowerText = '   AlREADY HAVE AN ACCOUNT?';
  var textButton = 'LOG IN';
}
