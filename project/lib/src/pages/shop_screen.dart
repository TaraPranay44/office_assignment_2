

import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/category_list.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/product_list.dart';
import 'package:project/src/Widgets/local_widgets/home_widgets/section_title.dart';
import 'package:project/src/services/data_models/shop_page_data.dart';
import 'package:project/src/utils/images.dart';
import 'package:project/src/utils/routes.dart';

class ShopScreen extends StatelessWidget {

  final VegHomePageData data = VegHomePageData();
   ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 60, left: 20, right: 20, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage(vegetablesBanner),
              ),
            )
            ),
            // SizedBox(height: 10,),
            sectionTitle(context,data.title1 , exclusiveOfferPageRoute),
            productList(data.exclusiveOffers),
            sectionTitle(context,data.title2 , bestSellingPageRoute),
            productList(data.bestSelling),
            sectionTitle(context,data.title3 , groceryPageRoute),
            CategoryList( data.category),
            SizedBox(height: 10,),
            productList(data.groceries),


          ],
        )
        ),
      ),
    );
  }
}