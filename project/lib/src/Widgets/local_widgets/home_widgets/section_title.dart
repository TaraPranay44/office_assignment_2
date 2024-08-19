import 'package:flutter/material.dart';
import 'package:project/src/utils/styles.dart';

Widget sectionTitle(BuildContext context, String title,String all_page) {
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: sectionTitleStyle,),
      TextButton(onPressed: (){
        Navigator.pushNamed(context, all_page);
      }, child: Text('See all',style: seeAll,))
    ]
  );
}