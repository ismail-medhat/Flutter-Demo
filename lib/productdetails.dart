import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productData;
  const ProductDetails({Key? key, this.productData});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        // centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.circle_notifications_outlined,
              color: Colors.black,
            ),
            Text(
              ' Product',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Details',
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.asset(widget.productData['image']),
          Text(
            widget.productData['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            widget.productData['subtitle'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            '\$${widget.productData['price']}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.orange,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Color : ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              const Text(
                ' Gray',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const Text(
                ' Black',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Size : ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '39',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '40',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '41',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '42',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '43',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 70,
              vertical: 20,
            ),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text('Add To Cart'),
            ),
          )
        ],
      ),
    );
  }
}
