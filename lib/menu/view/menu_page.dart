import 'package:flutter/material.dart';

import '../../app_util/app_style.dart';
import '../model/tabbar_model.dart';
import 'tabs/clothing_tab.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin {
  late TabController _tabController;
  TabBarModel tabs = TabBarModel();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          'Menu',
          style: TextStyle(color: cblack, fontWeight: FontWeight.w900),
        ),
        bottom: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Clothing",
            ),
            Tab(
              text: "Electronics",
            ),
            Tab(
              text: "Mart",
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child: ListView.builder(
                itemCount: tabs.clothing.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClothingTab(
                    image: tabs.clothingImage[index],
                    tabName: tabs.clothing[index],
                  );
                },
              ),
            ),
            const Center(
              child: Text("It's rainy here"),
            ),
            const Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
