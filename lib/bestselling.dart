import 'package:flutter/material.dart';
import 'package:flutter_demo/productdetails.dart';

// ignore: must_be_immutable
class BestSelling extends StatelessWidget {
  BestSelling({super.key});

  List bestSellingList = [
    {
      "image": 'images/backBag.jpeg',
      "title": "Headphone G24 black",
      "subtitle": "best headphone design",
      "price": 635,
    },
    {
      "image": 'images/bag.jpeg',
      "title": "Watch G74 grey",
      "subtitle": "best watch design",
      "price": 863,
    },
    {
      "image": 'images/manShose.jpeg',
      "title": "Headphone G24 black",
      "subtitle": "best headphone design",
      "price": 635,
    },
    {
      "image": 'images/mug.jpeg',
      "title": "Watch G74 grey",
      "subtitle": "best watch design",
      "price": 863,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return (GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 230),
        itemCount: bestSellingList.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        productData: bestSellingList[i],
                      )));
            },
            child: (Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 300,
                    // margin: const EdgeInsets.only(top: 5.0),
                    color: Colors.grey[200],
                    child: Image.asset(
                      bestSellingList[i]['image'],
                      height: 130,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bestSellingList[i]['title'],
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          bestSellingList[i]['subtitle'],
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '${bestSellingList[i]['price']}\$',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          );
        }));
  }
}
