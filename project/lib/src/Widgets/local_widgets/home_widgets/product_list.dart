import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/product_card.dart';
import 'package:project/src/pages/sub_shop_element_pages/product_details.dart';
import 'package:project/src/services/data_models/shop_page_data.dart';


Widget productList(List<ProductItem> items, VegHomePageData data) {
  return SizedBox(
    height: 220,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        ProductDetailsData? details = data.getProductDetails(items[index].name);
        return ProductCard(
          product: items[index],
          onButtonTap: () {
            // Logic for tapping button
          },
          onCardTap: () {
            if (details != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(product: details),
              ),
              );
            
          }
          }
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 6),
      itemCount: items.length,
    ),
  );
}
