import 'package:flutter/material.dart';
import 'package:project/src/utils/styles.dart';

Widget sectionTitle(BuildContext context, String title,String allPage) {
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: sectionTitleStyle,),
      TextButton(onPressed: (){
        Navigator.pushNamed(context, allPage);
      }, child: Text('See all',style: seeAll,))
    ]
  );
}