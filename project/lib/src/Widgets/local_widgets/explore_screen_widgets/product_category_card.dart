import 'package:flutter/material.dart';

class ProductCategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final Color borderColor;

  const ProductCategoryCard({super.key, 
    required this.title,
    required this.imagePath,
    required this.color,
     required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: borderColor, width: 0.7),
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 70), // Adjust the height as needed
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
