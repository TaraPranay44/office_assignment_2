import 'package:flutter/material.dart';
import 'package:project/src/auth/home_page.dart';
import 'package:project/src/auth/sign_in_page.dart';
import 'package:project/src/auth/sign_up_page.dart';
import 'package:project/src/pages/app_home.dart';
import 'package:project/src/pages/sub_explore_elements/filters.dart';
import 'package:project/src/pages/sub_shop_element_pages/best_selling_page.dart';
import 'package:project/src/pages/sub_shop_element_pages/exclusive_offer_page.dart';
import 'package:project/src/pages/sub_shop_element_pages/grocery_page.dart';
import 'package:project/src/pages/sub_shop_element_pages/product_details.dart';

final Map<String, WidgetBuilder> routes = {
  '/home_page': (context) => const MyHomePage(),
  '/sign_in_page': (context) => MySignInPage(),
  '/sign_up_page': (context) => const MySignUpPage(),
  '/app_home': (context) =>  AppHome(),
  '/product_details_page' : (context) => const ProductDetails(),
  '/filters_page' : (context) =>  FilterPage(),
  '/exclusive_offer_page' : (context) =>  ExclusiveOfferPage(),
  '/best_selling_page' : (context) =>  BestSellingPage(),
  '/groceries_page' : (context) =>  GroceryPage(),
};
