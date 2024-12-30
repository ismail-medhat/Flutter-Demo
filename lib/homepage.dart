import 'package:flutter/material.dart';
import 'package:flutter_demo/bestselling.dart';
import 'package:flutter_demo/categories.dart';
import 'package:flutter_demo/maintitle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: '*'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: '*'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: '*'),
          ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ],
            ),
            const MainTitle(title: 'Categories'),
            Categories(
              onCategoryTab: (i) {
                setState(() {
                  selectedCategoryIndex = i;
                });
              },
              selectedCategoryIndex: selectedCategoryIndex,
            ),
            const MainTitle(
              title: 'Best Selling',
              paddingVertial: 10,
            ),
            BestSelling(),
          ],
        ),
      ),
    );
  }
}
