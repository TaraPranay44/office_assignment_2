


import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/shop_screen/category_card.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';

Widget categoryList(List<CategoryItem>items){
  return SizedBox(
    height: 90,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
       itemBuilder: (context,index){
        return CategoryCard(category: items[index],onCardTap: () {
          //logic for tapping card
        },);
       },
       separatorBuilder: (context,index) => const SizedBox(width: 6,),
         itemCount: items.length),
  );
}