import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final dynamic onCategoryTab;
  final int selectedCategoryIndex;
  Categories(
      {super.key,
      required this.onCategoryTab(int i),
      required this.selectedCategoryIndex});

  List categories = [
    {
      "icon": Icons.laptop,
      "title": "Laptop",
    },
    {
      "icon": Icons.phone_android_rounded,
      "title": "Mobile",
    },
    {
      "icon": Icons.electric_bike,
      "title": "Bike",
    },
    {
      "icon": Icons.card_giftcard,
      "title": "Gifts",
    },
    {
      "icon": Icons.car_crash,
      "title": "car",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, i) {
            return (MaterialButton(
              onPressed: () => onCategoryTab(i),
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: selectedCategoryIndex == i
                          ? Colors.orange[200]
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      categories[i]["icon"],
                      size: 30,
                    ),
                  ),
                  Text(
                    categories[i]["title"],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ));
          }),
    ));
  }
}
