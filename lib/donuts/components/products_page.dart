import 'package:donuts_app/donuts/components/donuts_page.dart';
import 'package:donuts_app/donuts/donuts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List img = [
    'http://cdn.onlinewebfonts.com/svg/img_480297.png',
    'https://static.thenounproject.com/png/1637355-200.png',
    'https://static.thenounproject.com/png/2341914-200.png',
    'https://cdn-icons-png.flaticon.com/512/66/66699.png',
    ''
  ];
  List item = ['Donuts', 'Icecream', 'Cake', 'Lolipop'];
  List text = [
    'Sweets',
    'Starter',
    'Bakery',
    'Donuts',
    'Drinks',
    'Sweets',
    'Bakery'
  ];
  int selectionTab = 0,selectionEgg=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 60,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectionTab = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  decoration: BoxDecoration(),
                  child: Text(
                    text[index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color:
                            (selectionTab == index) ? Colors.black : Colors.black38),
                  ),
                ),
              ),
            )),
        Container(
            height: 160,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectionEgg = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  margin: EdgeInsets.all(10),
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: (selectionEgg == index)
                          ? Color(0xFF510002)
                          : Colors.white60),
                  child: Column(
                    children: [
                      Image.network(img[index],
                          color: (selectionEgg == index)
                              ? Colors.white
                              : Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item[index],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: (selectionEgg == index)
                                ? Colors.white
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donuts',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            DonutPage(),
          ],
        )
      ],
    );
  }
}
