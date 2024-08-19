import 'package:flutter/material.dart';
import 'package:project/src/pages/account_screen.dart';
import 'package:project/src/pages/cart_screen.dart';
import 'package:project/src/pages/explore_screen.dart';
import 'package:project/src/pages/favourite_screen.dart';
import 'package:project/src/pages/shop_screen.dart';
import 'package:project/src/utils/colors.dart';
import 'package:project/src/utils/constants.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  BottomBarData bottomBarData = BottomBarData();

  int selectedScreen = 0;

  final List<Widget> screens = [
    ShopScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const AccountScreen(),
  ];

  void onItemTapped(int index){
    setState(() {
      selectedScreen = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedScreen], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed, 
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.storefront),
            label: bottomBarData.label1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: bottomBarData.label2,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            label: bottomBarData.label3,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border_outlined),
            label: bottomBarData.label4,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outlined),
            label: bottomBarData.label5,
          ),
        ],
        selectedItemColor: textbutton1, 
        unselectedItemColor: category, 
        showUnselectedLabels: true, 
      ),
    );
  }
}