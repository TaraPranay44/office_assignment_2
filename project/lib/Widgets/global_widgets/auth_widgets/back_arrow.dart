import 'package:flutter/material.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/images.dart';

Widget backArrow(BuildContext context) {
  return IconButton(
    padding: const EdgeInsets.only(left: 15),
    icon: Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: textColor1, width: 0.1),
      ),
      width: 35,
      child: CircleAvatar(
        backgroundColor: white,
        child: Image.asset(backArror, width: 15, height: 15),
      ),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
