import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/shop_screen/product_card.dart';
import 'package:project/src/pages/app/app_tabs/shop/sub_shop_element_pages/product_details.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';

Widget productList(List<ProductItem> items, VegHomePageData data) {
  return SizedBox(
    height: 220,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal, // Scroll horizontally for product cards
      itemBuilder: (context, index) {
        // Retrieve product details based on the item name
        ProductDetailsData? details = data.getProductDetails(items[index].name);

        return ProductCard(
          product: items[index],
          // Action when the button inside the card is tapped
          onButtonTap: () {
            // Add your button tap logic here
          },
          // Action when the entire card is tapped
          onCardTap: () {
            if (details != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(product: details),
                ),
              );
            }
          },
        );
      },
      separatorBuilder: (context, index) =>
          const SizedBox(width: 6), // Space between items
      itemCount: items.length, // Number of items in the list
    ),
  );
}
