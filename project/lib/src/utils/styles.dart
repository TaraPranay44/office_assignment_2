import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/utils/colors.dart';

TextStyle buttonLightText = TextStyle(
    color: white,
    fontSize: 13,
    fontWeight:
        FontWeight.w400); // light colored font for text inside dark buttons
TextStyle headingText =
    TextStyle(color: textColor1, fontSize: 32.sp, fontWeight: FontWeight.w700);
TextStyle subHeadingText =
    TextStyle(color: textColor1, fontSize: 15.sp, fontWeight: FontWeight.w200);
TextStyle mediumBlackTextButton =
    TextStyle(color: textColor1, fontSize: 15.sp, fontWeight: FontWeight.w400);
TextStyle outerText =
    TextStyle(color: textColor3, fontSize: 14.sp, fontWeight: FontWeight.w400);
TextStyle textButton =
    TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp, color: buttonColor1);


//shop page styles

TextStyle seeAll = TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: textbutton1,fontFamily: 'Gilroy');
TextStyle sectionTitleStyle = TextStyle(fontWeight: FontWeight.w400,fontSize: 21,color: category,fontFamily: 'Gilroy');

//product card inside shop page styles
TextStyle productNameStyle = TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: item,fontFamily: 'Gilroy',);
TextStyle productUnitStyle = TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: itemInfo);
TextStyle productPriceStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: item);


