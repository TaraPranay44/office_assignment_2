// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';

class ProductCategoryCardData {
  final String title;
  final String imagePath;
  final Color color;
  final Color borderColor;

  ProductCategoryCardData({
    required this.title,
    required this.imagePath,
    required this.color,
    required this.borderColor,
  });
}

class ProductCategoryDataProvider {
  static final List<ProductCategoryCardData> productCategories = [
    ProductCategoryCardData(
      title: 'Fresh Fruits & Vegetable',
                    imagePath: fruits, 
                    color: fruitCard,
                    borderColor: fruitCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Cooking Oil & Ghee',
                    imagePath: oil,
                    color: oilCard,
                    borderColor: oilCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Meat & Fish',
                    imagePath: meat,
                    color: fishCard,
                    borderColor: fishCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Bakery & Snacks',
                    imagePath: bakery,
                    color: bakeryCard,
                    borderColor: bakeryCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Dairy & Eggs',
                    imagePath: diary,
                    color: dairyCard,
                    borderColor: dairyCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Beverages',
                    imagePath: beverages,
                    color: beverageCard,
                    borderColor: beverageCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Fresh Fruits & Vegetable',
                    imagePath: fruits, 
                    color: fruitCard,
                    borderColor: fruitCardBorder,
    ),
    ProductCategoryCardData(
      title: 'Dairy & Eggs',
                    imagePath: diary,
                    color: dairyCard,
                    borderColor: dairyCardBorder,
    ),
    ProductCategoryCardData(
      title: 'extra 2',
                    imagePath: fruits,
                    color: unknownCard2,
                    borderColor: unknownCard2,
    ),
   
  ];
}
