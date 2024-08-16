import 'package:flutter/material.dart';

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
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )
        ),
        onPressed: onPressed,
        
        child: ListTile(
          contentPadding: EdgeInsets.only(bottom: 15),
          leading: leadingSymbol,
          title: Center(child: text),
          titleAlignment: ListTileTitleAlignment.center,
          
        ),
         ),
    );
  }
}