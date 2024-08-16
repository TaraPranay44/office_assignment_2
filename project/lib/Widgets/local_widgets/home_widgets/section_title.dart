import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';

Widget sectionTitle(BuildContext context, String title,String all_page) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: category),),
      TextButton(onPressed: (){
        Navigator.pushNamed(context, all_page);
      }, child: Text('See all',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: textbutton1),))
    ]
  );
}