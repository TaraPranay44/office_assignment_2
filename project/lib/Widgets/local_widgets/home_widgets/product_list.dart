import 'package:flutter/material.dart';
import 'package:project/Widgets/local_widgets/home_widgets/product_card.dart';
import 'package:project/services/data_models/vegetables_home_page_data.dart';

Widget productList(List<ProductItem>items){
  return SizedBox(
    height: 220,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
       itemBuilder: (context,index){
        return ProductCard(product: items[index], onButtonTap: (){
          //logic for tapping button
        }, onCardTap: (){
          //logic for tapping card
        });
       },
       separatorBuilder: (context,index) => SizedBox(width: 6,),
         itemCount: items.length),
  );
}