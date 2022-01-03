import 'package:donuts_app/donuts/components/viewpage/view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DonutPage extends StatefulWidget {
  @override
  State<DonutPage> createState() => _DonutPageState();
}

class _DonutPageState extends State<DonutPage> {
  List text = ['Caramal Donuts', 'Coco donut', 'Cake'];
  List item = ['with sugar glaze', 'with caramal', 'Creamey'];
  List doll = ['\$20', '\$25', '67'];
  List images = [
    'https://storage.googleapis.com/multi-static-content/previews/artage-io-thumb-c15ffb3c1ab7e9b47511598a572ee504.png',
    'https://i.pinimg.com/originals/fb/e2/99/fbe299e2296f06d3bc1ac25bb7347267.png',
    'https://www.pngall.com/wp-content/uploads/11/Pink-Donut-PNG-Images-HD.png'
  ];
  bool isLike = false;
  final double size = 40;
  int index = 0, selection = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.none,
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                      margin: EdgeInsets.only(top: 83, left: 20),
                      padding: EdgeInsets.only(top: 80, left: 20),
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text[index],
                            style: TextStyle(
                                color: Color(0xFF510002),
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                          Text(item[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(doll[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: -6,
                        left: 30,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ImagePage(images[index])));
                          },
                          child: Hero(tag:images[index],
                            child: Image.network(
                              images[index],
                              scale: 3,
                            ),
                          ),
                        )),
                  ])),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
              color: Color(0xFF510002)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMenu(Icons.house, 0),
              _buildMenu(Icons.notifications, 1),
              _buildMenu(Icons.location_on, 2),
              _buildMenu(Icons.favorite_outlined, 3)
            ],
          ),
        ),
      ],
    );
  }

  IconButton _buildMenu(IconData menu, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          this.index = index;
        });
      },
      icon: Icon(menu,
          size: 40, color: this.index == index ? Colors.red : Colors.white),
    );
  }
}
