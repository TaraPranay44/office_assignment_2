import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget googleButton(BuildContext context) {
  return MyButton(
      backgroundColor: white,
      foregroundColor: textColor1,
      text: Text(
        'CONTINUE WITH GOOGLE',
        style: TextStyle(
            color: textColor1, fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
      width: 360.w,
      height: 55.h,
      leadingSymbol: Image.asset(
        googleIcon,
         width: 25.w,
        height: 30.h,
      ),
      onPressed: () {});
}
