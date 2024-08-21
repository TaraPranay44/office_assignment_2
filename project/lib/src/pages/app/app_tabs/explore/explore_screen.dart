import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/explore_app_bar.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/filter_page/filter_screen_as_bottom_sheet.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/product_category_card.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/search_bar.dart';
import 'package:project/src/services/data_models/app_data_models/explore_pafe/explore_page_data_model.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';

// Main screen displaying the Explore page.
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      
      // Custom AppBar widget specific to the Explore screen.
      appBar: exploreAppBar(context),
      
      body: Column(
        children: [
          // Search bar and filter button row.
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
            child: Row(
              children: [
                // Reusable search bar widget.
                searchBarWidget(context),
                const SizedBox(width: 4),
                
                // Filter button to open the filter bottom sheet.
                IconButton(
                  icon: Image.asset(filter, width: 18, height: 18),
                  onPressed: () {
                    // Opens the filter options as a bottom sheet.
                    Scaffold.of(context).showBottomSheet((BuildContext context) {
                      return const FilterBottomSheet();
                    });
                  },
                ),
              ],
            ),
          ),
          
          // Product category grid section.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                // Grid settings for two columns with spacing.
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7.0,
                  mainAxisSpacing: 7.0,
                ),
                
                // Number of items is determined by the length of product categories in the data provider.
                itemCount: ProductCategoryDataProvider.productCategories.length,
                
                // Builds each product category card dynamically.
                itemBuilder: (context, index) {
                  final product = ProductCategoryDataProvider.productCategories[index];
                  return ProductCategoryCard(
                    title: product.title,
                    imagePath: product.imagePath,
                    color: product.color,
                    borderColor: product.borderColor,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
