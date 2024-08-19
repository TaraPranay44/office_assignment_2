

import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/category_list.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/product_list.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/section_title.dart';
import 'package:project/src/services/data_models/shop_page_data.dart';
// import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';
import 'package:project/src/utils/routes.dart';




class ShopScreen extends StatelessWidget {
  final VegHomePageData data = VegHomePageData();

  ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 110,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(vegetablesBanner),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              sectionTitle(context, data.title1, exclusiveOfferPageRoute),
              productList(data.exclusiveOffers, data), // Pass details data here
              sectionTitle(context, data.title2, bestSellingPageRoute),
              productList(data.bestSelling, data),
              sectionTitle(context, data.title3, groceryPageRoute),
              categoryList(data.category),
              const SizedBox(height: 10),
              productList(data.groceries, data),
            ],
          ),
        ),
      ),
    );
  }
}
