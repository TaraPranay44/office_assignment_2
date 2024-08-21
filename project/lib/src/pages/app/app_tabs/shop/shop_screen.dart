import 'package:flutter/material.dart'; // Importing Flutter's material design package
import 'package:project/src/Widgets/local_widgets/shop_screen/category_list.dart'; // Custom widget for displaying category list
import 'package:project/src/Widgets/local_widgets/shop_screen/product_list.dart'; // Custom widget for displaying product list
import 'package:project/src/Widgets/local_widgets/shop_screen/section_title.dart'; // Custom widget for section titles
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart'; // Data model for the shop page
import 'package:project/src/utils/colors.dart'; // Color constants
import 'package:project/src/utils/images.dart'; // Image assets constants
import 'package:project/src/utils/routes.dart'; // Route constants for navigation

class ShopScreen extends StatelessWidget {
  final VegHomePageData data =
      VegHomePageData(); // Data model instance for the shop screen content

  ShopScreen({super.key}); // Constructor for the StatelessWidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white, // Background color of the screen
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 60, left: 20, right: 0), // Padding for the entire content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .center, // Center-aligns the column's children
            children: [
              Container(
                height: 110, // Height of the banner image
                margin: const EdgeInsets.only(
                    right: 16), // Margin on the right side of the banner
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      16), // Rounded corners for the banner
                  image: DecorationImage(
                    image: AssetImage(
                        vegetablesBanner), // Banner image from assets
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire container
                  ),
                ),
              ),
              sectionTitle(context, data.title1,
                  exclusiveOfferPageRoute), // Section title for exclusive offers
              productList(data.exclusiveOffers,
                  data), // Product list for exclusive offers
              sectionTitle(context, data.title2,
                  bestSellingPageRoute), // Section title for best-selling products
              productList(data.bestSelling,
                  data), // Product list for best-selling products
              sectionTitle(context, data.title3,
                  groceryPageRoute), // Section title for groceries
              categoryList(data.category), // Category list widget
              const SizedBox(
                  height: 10), // Spacer between category list and product list
              productList(data.groceries, data), // Product list for groceries
            ],
          ),
        ),
      ),
    );
  }
}
