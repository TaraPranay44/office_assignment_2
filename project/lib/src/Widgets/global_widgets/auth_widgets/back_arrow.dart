import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backArrow(BuildContext context) {
  return IconButton(
    padding:  EdgeInsets.only(left: 15.h),
    icon: Container(
      padding:  EdgeInsets.all(2.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: black12, width: 0.7.w),
      ),
      width: 55.w,
      child: CircleAvatar(
        backgroundColor: white,
        child: Image.asset(backArror, width: 15.w, height: 15.h),
      ),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
