

import 'package:flutter/material.dart';
import 'package:project/Widgets/local_widgets/home_widgets/product_list.dart';
import 'package:project/Widgets/local_widgets/home_widgets/section_title.dart';
import 'package:project/services/data_models/vegetables_home_page_data.dart';
import 'package:project/utils/images.dart';

class FruitsHome extends StatelessWidget {

  final VegHomePageData data = VegHomePageData();
   FruitsHome({super.key});

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
            sectionTitle(context,data.title1 , '/exclusive_offer_page'),
            productList(data.exclusiveOffers),
            sectionTitle(context,data.title2 , '/best_selling_page'),
            productList(data.bestSelling),
            sectionTitle(context,data.title3 , '/groceries_page'),
            productList(data.groceries),


          ],
        )
        ),
      ),
    );
  }
}