  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';

Widget buildTitleAndBookmark() {
  ProductDetailsData? product;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product!.title,
              style: TextStyle(
                fontSize: 30.h,
                fontWeight: FontWeight.w300,
                color: pText1,
                fontFamily: 'Gilroy',
              ),
            ),
            Text(
              product.subtitle,
              style: TextStyle(
                fontSize: 18.h,
                fontWeight: FontWeight.w100,
                color: pText2,
                fontFamily: 'Gilroy',
              ),
            ),
          ],
        ),
        Image.asset(
          bookmark,
          height: 24.h,
          width: 24.w,
        ),
      ],
    );
  }