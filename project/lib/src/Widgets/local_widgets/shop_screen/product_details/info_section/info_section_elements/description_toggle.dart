  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';

class BuildProductDescriptionToggle extends StatefulWidget {
  const BuildProductDescriptionToggle({super.key});

  @override
  State<BuildProductDescriptionToggle> createState() => _BuildProductDescriptionToggleState();
}

class _BuildProductDescriptionToggleState extends State<BuildProductDescriptionToggle> {
   bool isDescriptionExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                  setState(() {
                    isDescriptionExpanded = !isDescriptionExpanded;
                  });
                },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Product Detail',
            style: TextStyle(
              fontSize: 18.h,
              color: pText1,
              fontWeight: FontWeight.w300,
              fontFamily: 'Gilroy',
            ),
          ),
          Icon(
            isDescriptionExpanded
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down,
            size: 24,
          ),
        ],
      ),
    );
  }
}


  Widget buildProductDescription() {
     ProductDetailsData? product;
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Text(
        product!.description,
        style: TextStyle(
          fontSize: 15.h,
          color: pText2,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
