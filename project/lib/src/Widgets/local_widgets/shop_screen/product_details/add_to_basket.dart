import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: pButton1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: const Size(330, 50),
        ),
        onPressed: () {},
        child: Text(
          'Add To Basket',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: pButtonText1,
          ),
        ),
      ),
    );
  }
}