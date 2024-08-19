import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget facebookButton(BuildContext context) {
  return MyButton(
      backgroundColor: buttonColor2,
      foregroundColor: white,
      text: Text(
        'CONTINUE WITH FACEBOOK',
        style:
            TextStyle(color: white, fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
      width: 360.w,
      height: 55.h,
      leadingSymbol: Image.asset(
        facebookIcon,
        width: 25.w,
        height: 30.h,
      ),
      onPressed: () {});
}
