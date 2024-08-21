  import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/apply_filters.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/brand_section.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_page_widgets/category_section.dart';
import 'package:project/src/utils/colors.dart';

Widget buildFilterContent() {
    return Container(
      decoration: BoxDecoration(
        color: fbgFill,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildCategorySection(),
                  SizedBox(height: 20),
                  BuildBrandSection(),
                ],
              ),
            ),
          ),
          buildApplyButton(),
        ],
      ),
    );
  }