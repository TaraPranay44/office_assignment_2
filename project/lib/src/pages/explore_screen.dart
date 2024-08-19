import 'package:flutter/material.dart';
import 'package:project/src/Widgets/local_widgets/explore_screen_widgets/product_category_card.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/icons.dart';
import 'package:project/src/utils/images.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Center(child: Text('Find Products', style: TextStyle(color: eText1,fontFamily: 'Gilroy',fontWeight: FontWeight.w300,fontSize: 18),)),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,5,10),
            child: Row(
              children: [
                Expanded(
  child: SizedBox(
    height: 50, // Adjust the height as needed
    child: TextField(
      decoration: InputDecoration(
        fillColor: searchBar, // Your color for the search bar
        filled: true,
        hintText: 'Search Store',
        hintStyle: TextStyle(color: eText2,fontWeight: FontWeight.w500,fontSize: 14),
        prefixIcon: Image.asset(search),
        border: InputBorder.none, // No border by default
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent, // Keeps it borderless when not focused
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue, // Border color when focused
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
)
,
                const SizedBox(width: 4),
                IconButton(
                  icon: Image.asset(filter,width: 18,height: 18),
                  onPressed: () {
                    Navigator.pushNamed(context, '/filters_page');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing:7.0,
                mainAxisSpacing: 7.0,
                children: [
                  ProductCategoryCard(
                    title: 'Fresh Fruits & Vegetable',
                    imagePath: fruits, // Use appropriate paths or NetworkImage
                    color: fruitCard,
                    borderColor: fruitCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'Cooking Oil & Ghee',
                    imagePath: oil,
                    color: oilCard,
                    borderColor: oilCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'Meat & Fish',
                    imagePath: meat,
                    color: fishCard,
                    borderColor: fishCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'Bakery & Snacks',
                    imagePath: bakery,
                    color: bakeryCard,
                    borderColor: bakeryCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'Dairy & Eggs',
                    imagePath: diary,
                    color: dairyCard,
                    borderColor: dairyCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'Beverages',
                    imagePath: beverages,
                    color: beverageCard,
                    borderColor: beverageCardBorder,
                  ),
                  ProductCategoryCard(
                    title: 'extra 1',
                    imagePath: beverages,
                    color: unknownCard1,
                    borderColor: unknowmCard1Border,
                  ),
                  ProductCategoryCard(
                    title: 'extra 2',
                    imagePath: fruits,
                    color: unknownCard2,
                    borderColor: unknownCard2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}