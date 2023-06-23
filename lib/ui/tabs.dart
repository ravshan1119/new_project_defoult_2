import 'package:flutter/material.dart';
import 'package:new_project_defoult_2/ui/favorite_screen.dart';
import 'package:new_project_defoult_2/ui/products.dart';
import 'package:new_project_defoult_2/ui/profile_screen.dart';
import 'package:new_project_defoult_2/ui/shopping_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Widget> screens = [];
  int currentIndex = 0;

  @override
  void initState() {
    screens.add(ProductsScreen());
    screens.add(ShoppingScreen());
    screens.add(FavoriteScreen());
    screens.add(ProfileScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
