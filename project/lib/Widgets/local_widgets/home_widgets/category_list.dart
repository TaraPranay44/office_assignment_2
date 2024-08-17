


import 'package:flutter/material.dart';
import 'package:project/Widgets/local_widgets/home_widgets/category_card.dart';
import 'package:project/services/data_models/vegetables_home_page_data.dart';

Widget CategoryList(List<CategoryItem>items){
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
       separatorBuilder: (context,index) => SizedBox(width: 6,),
         itemCount: items.length),
  );
}