import 'package:flutter/material.dart';
import 'package:project/Widgets/global_widgets/auth_widgets/my_button.dart';
import 'package:project/utils/colors.dart';

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
        Navigator.pushNamed(context, '/app_home');
      });
}
