

import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/filter_content.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/filter_header.dart';
import 'package:project/src/utils/colors.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  // Get filter options from the data classes
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      color: white,
      child: Column(
        children: [
          buildHeader(context),
          Expanded(
            child: buildFilterContent(),
          ),
        ],
      ),
    );
  }









 

}
