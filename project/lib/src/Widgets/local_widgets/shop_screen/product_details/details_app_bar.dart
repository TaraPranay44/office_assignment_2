import 'package:flutter/material.dart';
import 'package:project/src/utils/icons.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(backArrow, height: 17),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(sendIcon, height: 17),
          ),
        ],
      ),
    );
  }
}