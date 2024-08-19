
import 'package:flutter/material.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/images.dart';



class CategoryItem {
  final String name;
  final String image;
  final Color color;

  CategoryItem({required this.name, required this.image, required this.color});
}
class ProductItem {
  final String name;
  final String image;
  final String price;
  final String unit;

  ProductItem({required this.name, required this.image, required this.price, required this.unit});
}

class VegHomePageData{
  final String title1 = 'Exclusive Offer';
  final String title2 = 'Best Selling';
  final String title3 = 'Groceries';


  final List<ProductItem> exclusiveOffers = [
    ProductItem(name: "Organic Bananas", image: bananas, price: "3.99", unit: "7pcs, Priceg"),
    ProductItem(name: "Red Apple", image: apples, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Organic Bananas", image: bananas, price: "3.99", unit: "7pcs, Priceg"),
    ProductItem(name: "Red Apple", image: apples, price: "4.99", unit: "1kg, Priceg"),
  ];

  final List<ProductItem> bestSelling = [
    ProductItem(name: "Bell Pepper Red", image: redCapsicum, price: "5.49", unit: "1kg, Priceg"),
    ProductItem(name: "Ginger", image: garlic, price: "2.99", unit: "250gm, Priceg"),
    ProductItem(name: "Bell Pepper Red", image: redCapsicum, price: "5.49", unit: "1kg, Priceg"),
    ProductItem(name: "Ginger", image: garlic, price: "2.99", unit: "250gm, Priceg"),
  ];

  final List<ProductItem> groceries = [
    ProductItem(name: "Beef Bone", image: mutton, price: "9.99", unit: "1kg, Priceg"),
    ProductItem(name: "Broiler Chicken", image: chicken, price: "8.99", unit: "1kg, Priceg"),
    ProductItem(name: "Beef Bone", image: mutton, price: "9.99", unit: "1kg, Priceg"),
    ProductItem(name: "Broiler Chicken", image: chicken, price: "8.99", unit: "1kg, Priceg"),
  ];

  final List<CategoryItem> category = [
    CategoryItem(name: "Pulses", image: pulses,color: groceryBox1),
    CategoryItem(name: "Rice", image: rice,color: groceryBox2),
    CategoryItem(name: "Pulses", image: pulses,color: groceryBox1),
    CategoryItem(name: "Rice", image: rice,color: groceryBox2),
   
  ];

  ProductDetailsData? getProductDetails(String productName) {
    return ProductDetailsList.products.firstWhere(
      (product) => product.title == productName,
      orElse: () => ProductDetailsData(title: 'Natural Red Apple', subtitle: '1kg, Price', price: '\$4.99', description: 'Apples are nutritious and may be good for your heart. A part of a healthful and varied cuisine.', imagePath: 'assets/images/apples.png'),
    );
  }


}


//product_details_page_data

class ProductDetailsData {
  final String title;
  final String subtitle;
  final String price;
  final String description;
  final String imagePath;

  ProductDetailsData({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.description,
    required this.imagePath,
  });
}

class ProductDetailsList {
  // Sample list of product details
  static final List<ProductDetailsData> products = [
    ProductDetailsData(
      title: 'Natural Red Apple',
      subtitle: '1kg, Price',
      price: '\$4.99',
      description: 'Apples are nutritious and may be good for your heart. A part of a healthful and varied diet.',
      imagePath: 'assets/images/apples.png', // Replace with your image path
    ),
    ProductDetailsData(
      title: 'Organic Bananas',
      subtitle: '7pcs, Price',
      price: '\$3.99',
      description: 'Rich in potassium and fiber, bananas are a convenient and healthy snack.',
      imagePath: 'assets/images/bananas.png',
    ),
    ProductDetailsData(
      title: 'Broiler Chicken',
      subtitle: '1kg, Price',
      price: '\$8.99',
      description: 'Fresh and tender chicken, perfect for grilling or frying.',
      imagePath: 'assets/images/chicken.png',
    ),
    ProductDetailsData(
      title: 'Bell Pepper Red',
      subtitle: '1kg, Price',
      price: '\$5.49',
      description: 'Crisp and sweet red bell peppers, perfect for salads and stir-fries.',
      imagePath: 'assets/images/red_capsicum.png',
    ),
    ProductDetailsData(
      title: 'Ginger',
      subtitle: '250gm, Price',
      price: '\$2.99',
      description: 'Fresh ginger root, a versatile spice with numerous health benefits.',
      imagePath: 'assets/images/garlic.png',
    ),
    ProductDetailsData(
      title: 'Beef Bone',
      subtitle: '1kg, Price',
      price: '\$9.99',
      description: 'Rich and flavorful beef bones, ideal for making hearty broths and soups.',
      imagePath: 'assets/images/mutton.png',
    ),
  ];
}