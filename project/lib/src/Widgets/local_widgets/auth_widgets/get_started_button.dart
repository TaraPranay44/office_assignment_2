import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget getStarted(BuildContext context) {
  return Container(
    padding: EdgeInsets.fromLTRB(10.w, 15.h, 10.w, 15.h),
    child: MyButton(
      
        backgroundColor: buttonColor1,
        foregroundColor: textColor2,
        text: Text(
          'GET STARTED',
          style: TextStyle(
              color: textColor2, fontWeight: FontWeight.w400, fontSize: 14.sp),
        ),
        width: 360.w,
        height: 55.h,
        onPressed: () {
          Navigator.pushNamed(context, appRoute);
        }),
  );
}
