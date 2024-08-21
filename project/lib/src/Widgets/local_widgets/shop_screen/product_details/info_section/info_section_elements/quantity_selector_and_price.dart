  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';

Widget buildQuantitySelectorAndPrice() {
   ProductDetailsData? product;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 190.h,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove, size: 22.h),
                onPressed: () {},
              ),
              Container(
                width: 34.w,
                height: 34.h,
                decoration: BoxDecoration(
                  border: Border.all(color: pText2, width: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add, size: 22.h),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Text(
          product!.price,
          style: TextStyle(
            color: pText1,
            fontFamily: 'Gilroy',
            fontSize: 22.h,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }