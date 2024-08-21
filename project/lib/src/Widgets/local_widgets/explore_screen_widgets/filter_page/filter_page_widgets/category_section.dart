  import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/check_box.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/section_title.dart';
import 'package:project/src/services/data_models/app_data_models/explore_pafe/filters_data.dart';


  class BuildCategorySection extends StatefulWidget {
  const BuildCategorySection({super.key});

  @override
  State<BuildCategorySection> createState() => _BuildCategorySectionState();
}

class _BuildCategorySectionState extends State<BuildCategorySection> {
     final List<CategoryFilter> categories = CategoryFilter.getCategories();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle('Categories'),
        const SizedBox(height: 10),
        // Dynamically generate category checkboxes
        ...categories.map((category) {
          return buildCheckboxRow(
            category.name,
            category.isChecked,
            (value) {
              setState(() => category.isChecked = value!);
            },
          );
        }),
      ],
    );
  }
}