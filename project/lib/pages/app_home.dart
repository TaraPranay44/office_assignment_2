import 'package:flutter/material.dart';
import 'package:project/pages/account_screen.dart';
import 'package:project/pages/cart_screen.dart';
import 'package:project/pages/explore_screen.dart';
import 'package:project/pages/favourite_screen.dart';
import 'package:project/pages/shop_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  int selectedScreen = 0;

  final List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];

  void onItemTapped(int index){
    setState(() {
      selectedScreen = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedScreen], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed, // For more than 3 items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.blue, // Highlight color for the selected tab
        unselectedItemColor: Colors.black, // Color for unselected tabs
        showUnselectedLabels: true, // Show labels for unselected tabs
      ),
    );
  }
}