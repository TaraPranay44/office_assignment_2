
import 'package:project/utils/images.dart';

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
    ProductItem(name: "Organic Bananas", image: bananas, price: "4.99", unit: "7pcs, Priceg"),
    ProductItem(name: "Red Apple", image: apples, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Organic Bananas", image: bananas, price: "4.99", unit: "7pcs, Priceg"),
    ProductItem(name: "Red Apple", image: apples, price: "4.99", unit: "1kg, Priceg"),
  ];

  final List<ProductItem> bestSelling = [
    ProductItem(name: "Bell Pepper Red", image: redCapsicum, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Ginger", image: garlic, price: "4.99", unit: "250gm, Priceg"),
    ProductItem(name: "Bell Pepper Red", image: redCapsicum, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Ginger", image: garlic, price: "4.99", unit: "250gm, Priceg"),
  ];

  final List<ProductItem> groceries = [
    ProductItem(name: "Beef Bone", image: mutton, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Broiler Chicken", image: chicken, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Beef Bone", image: mutton, price: "4.99", unit: "1kg, Priceg"),
    ProductItem(name: "Broiler Chicken", image: chicken, price: "4.99", unit: "1kg, Priceg"),
  ];
}