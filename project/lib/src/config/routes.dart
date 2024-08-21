import 'package:flutter/material.dart';
import 'package:project/src/auth/auth_pages/home_page.dart';
import 'package:project/src/auth/auth_pages/sign_in_page.dart';
import 'package:project/src/auth/auth_pages/sign_up_page.dart';
import 'package:project/src/pages/app/app_home.dart';
import 'package:project/src/pages/app/app_tabs/shop/sub_shop_element_pages/best_selling_page.dart';
import 'package:project/src/pages/app/app_tabs/shop/sub_shop_element_pages/exclusive_offer_page.dart';
import 'package:project/src/pages/app/app_tabs/shop/sub_shop_element_pages/grocery_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/home_page': (context) => const MyHomePage(),
  '/sign_in_page': (context) => MySignInPage(),
  '/sign_up_page': (context) => const MySignUpPage(),
  '/app_home': (context) =>  const AppHome(),
  '/exclusive_offer_page' : (context) =>  const ExclusiveOfferPage(),
  '/best_selling_page' : (context) =>  const BestSellingPage(),
  '/groceries_page' : (context) =>  const GroceryPage(),
};
