import 'package:flutter/material.dart';
import 'package:project/src/services/data_models/app_data_models/shop_page_data.dart';
import 'package:project/src/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  final CategoryItem category;
  final Function() onCardTap;

  const CategoryCard({super.key, required this.category, required this.onCardTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: GestureDetector(
        
        onTap: (){},
        child: Card(
          elevation: 0,
          color: category.color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide(color: groceryItem,width: 0.1)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 10,),
              Image.asset(category.image,height: 60,width: 60,),
              const SizedBox(width: 15,),
              Text(category.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: item),)
            ],
          ),
        ),
      ),
    );
  }
}