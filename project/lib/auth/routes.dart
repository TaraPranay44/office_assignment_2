import 'package:flutter/material.dart';
import 'package:project/auth/home_page.dart';
import 'package:project/auth/sign_in_page.dart';
import 'package:project/auth/sign_up_page.dart';

final Map<String,WidgetBuilder> routes = {
  '/home_page': (context) => const MyHomePage(),
  '/sign_in_page': (context) => const MySignInPage(),
  '/sign_up_page': (context) => const MySignUpPage(),
};