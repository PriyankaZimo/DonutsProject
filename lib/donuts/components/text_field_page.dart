import 'package:donuts_app/donuts/components/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  enabled: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.white,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Type here for search..',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xFF510002)),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Products',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ProductsPage(),
            ],
          )
        ],
      ),
    );
  }
}
