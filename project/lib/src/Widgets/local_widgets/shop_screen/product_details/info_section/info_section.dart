import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/info_section/info_section_elements/description_toggle.dart';
import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/info_section/info_section_elements/quantity_selector_and_price.dart';
import 'package:project/src/Widgets/local_widgets/shop_screen/product_details/info_section/info_section_elements/title_and_bookmark.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductDetailsData product;
  final bool isDescriptionExpanded;
  final VoidCallback onDescriptionToggle;

  const ProductInfoSection({super.key, 
    required this.product,
    required this.isDescriptionExpanded,
    required this.onDescriptionToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 14, 16, 10),
      child: Column(
        children: [
          buildTitleAndBookmark(),
          SizedBox(height: 14.h),
          buildQuantitySelectorAndPrice(),
          SizedBox(height: 14.h),
          const Divider(thickness: 0.3),
          const BuildProductDescriptionToggle(),
          if (isDescriptionExpanded) const BuildProductDescriptionToggle(),
        ],
      ),
    );
  }
}