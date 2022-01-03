import 'package:donuts_app/donuts/components/viewpage/sweet_donut_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  ImagePage(this.images);
  String images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(10)),
                color: Color(0xFF510002)),
            child: Icon(
              Icons.drag_indicator ,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(tag: images,
                child: Image.network(images)),
            SweetDonut()
          ],
        ),
      ),
    );
  }
}
