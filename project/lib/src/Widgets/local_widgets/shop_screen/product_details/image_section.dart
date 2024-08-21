import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';
import 'package:shadow/shadow.dart';


class ProductImageSection extends StatelessWidget {
  final ProductDetailsData product;

  const ProductImageSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.h,
      decoration: BoxDecoration(
        color: productImageBg,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Shadow(
              options: ShadowOptions(
                overlayColor: productImageBg,
                blur: 10,
                offset: const Offset(7, 7),
              ),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.contain,
                height: 220.h,
              ),
            ),
            const SizedBox(height: 15),
            Image.asset(slideIcon),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}