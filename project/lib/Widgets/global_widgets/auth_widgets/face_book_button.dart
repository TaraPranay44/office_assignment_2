import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/utils/colors.dart';
import 'package:project/utils/images.dart';

Widget facebookButton(BuildContext context) {
  return MyButton(
      backgroundColor: buttonColor2,
      foregroundColor: white,
      text: Text(
        'CONTINUE WITH FACEBOOK',
        style:
            TextStyle(color: white, fontSize: 13, fontWeight: FontWeight.w400),
      ),
      width: 330,
      height: 50,
      leadingSymbol: Image.asset(
        facebookIcon,
        width: 20,
        height: 20,
      ),
      onPressed: () {});
}
