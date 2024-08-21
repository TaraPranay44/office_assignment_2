  import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/check_box.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/section_title.dart';
import 'package:project/src/services/data_models/app_data_models/explore_pafe/filters_data.dart';


class BuildBrandSection extends StatefulWidget {
  const BuildBrandSection({super.key});

  @override
  State<BuildBrandSection> createState() => _BuildBrandSectionState();
}

class _BuildBrandSectionState extends State<BuildBrandSection> {
      final List<BrandFilter> _brands = BrandFilter.getBrands();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle('Brand'),
        const SizedBox(height: 10),
        // Dynamically generate brand checkboxes
        ..._brands.map((brand) {
          return buildCheckboxRow(
            brand.name,
            brand.isChecked,
            (value) {
              setState(() => brand.isChecked = value!);
            },
          );
        }),
      ],
    );
  }
}
