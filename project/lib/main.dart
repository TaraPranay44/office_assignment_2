import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/auth/home_page.dart';
import 'package:project/src/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(411, 890),
      minTextAdapt: true, 
      splitScreenMode: true,
      
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'assignment-2',
        home: const MyHomePage(),
        routes: routes,
        
      ),
    );
  }
}
