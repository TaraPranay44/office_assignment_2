import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';

Widget sectionTitle(BuildContext context, String title,String all_page) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 21,color: category,fontFamily: 'Gilroy'),),
      TextButton(onPressed: (){
        Navigator.pushNamed(context, all_page);
      }, child: Text('See all',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: textbutton1,fontFamily: 'Gilroy'),))
    ]
  );
}