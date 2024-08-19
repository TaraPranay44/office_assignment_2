import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';

Widget googleButton(BuildContext context) {
  return MyButton(
      backgroundColor: white,
      foregroundColor: textColor1,
      text: Text(
        'CONTINUE WITH GOOGLE',
        style: TextStyle(
            color: textColor1, fontSize: 13, fontWeight: FontWeight.w400),
      ),
      width: 330,
      height: 50,
      leadingSymbol: Image.asset(
        googleIcon,
        width: 20,
        height: 20,
      ),
      onPressed: () {});
}
