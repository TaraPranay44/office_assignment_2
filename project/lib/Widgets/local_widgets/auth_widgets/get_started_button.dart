import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/utils/colors.dart';

Widget getStarted(BuildContext context) {
  return MyButton(
      backgroundColor: buttonColor1,
      foregroundColor: textColor2,
      text: Text(
        'GET STARTED',
        style: TextStyle(
            color: textColor2, fontWeight: FontWeight.w400, fontSize: 13),
      ),
      width: 330,
      height: 50,
      onPressed: () {});
}
