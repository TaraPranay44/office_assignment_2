import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/src/utils/colors.dart';


class MyButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final Widget? leadingSymbol;
  final Widget text;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    this.leadingSymbol,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      // width: width,
      // height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              side:  BorderSide(color: black12, width: 0.5),
              borderRadius: BorderRadius.circular(30.h),
            )),
        onPressed: onPressed,
        child: ListTile(
          // contentPadding:  EdgeInsets.only(bottom: 20.h, right: 20.w,),
          leading: leadingSymbol,
          title: Center(child: text),
          titleAlignment: ListTileTitleAlignment.center,
        ),
      ),
    );
  }
}
