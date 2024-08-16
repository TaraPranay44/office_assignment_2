import 'package:flutter/material.dart';
import 'package:project/auth/home_page.dart';
import 'package:project/auth/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'assignment-2',
      home: const MyHomePage(),
      // initialRoute: '/' ,
      routes: routes,
    );
  }
}
