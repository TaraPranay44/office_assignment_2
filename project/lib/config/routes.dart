import 'package:flutter/material.dart';
import 'package:project/auth/home_page.dart';
import 'package:project/auth/sign_in_page.dart';
import 'package:project/auth/sign_up_page.dart';
import 'package:project/pages/app_home.dart';
import 'package:project/pages/sub_explore_elements/filters.dart';
import 'package:project/pages/sub_shop_element_pages/product_details.dart';

final Map<String, WidgetBuilder> routes = {
  '/home_page': (context) => const MyHomePage(),
  '/sign_in_page': (context) => MySignInPage(),
  '/sign_up_page': (context) => const MySignUpPage(),
  '/app_home': (context) =>  AppHome(),
  '/product_details_page' : (context) => const ProductDetails(),
  '/filters_page' : (context) =>  FilterPage(),
};
