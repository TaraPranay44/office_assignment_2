import 'package:flutter/material.dart';
import 'package:project/src/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/routes.dart';

Widget logInButton(BuildContext context) {
  return MyButton(
      backgroundColor: buttonColor1,
      foregroundColor: white,
      text: Text(
        'LOG IN',
        style:
            TextStyle(color: white, fontSize: 13, fontWeight: FontWeight.w400),
      ),
      width: 330,
      height: 50,
      onPressed: () {
        Navigator.pushNamed(context, appRoute);
      });
}
