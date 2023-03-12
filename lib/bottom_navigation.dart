import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

import 'cart/view/cart_page.dart';
import 'home/view/home_page.dart';

class ButtomNav extends StatefulWidget {
  ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int _selectedIndex = 0;

  List<Widget> pageList = [
    HomePage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.shopping_bag),
              title: const Text('Cart'),
            ),
          ],
        ),
//you have to just do changes here...
        body: pageList.elementAt(_selectedIndex));
  }
}
