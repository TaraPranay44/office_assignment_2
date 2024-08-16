import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/images.dart';

class HomePage{
  Image titleImage = Image.asset(silentMoon);
  Image centerImage = Image.asset(girlSitting,height: 200,);
  Text heading = Text('We are what we do',style: TextStyle(color: textColor1 ,fontSize: 25,fontWeight: FontWeight.w700),);
  Text subHeading1 = Text('Thousands of people are using silent moon',style: TextStyle(color: textColor1,fontSize: 13,fontWeight: FontWeight.w200),);
  Text subHeading2 = Text('for smalls meditation',style: TextStyle(color: textColor1,fontSize: 13,fontWeight: FontWeight.w200),);
  

}