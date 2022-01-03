import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SweetDonut extends StatefulWidget {
  @override
  State<SweetDonut> createState() => _SweetDonutState();
}

class _SweetDonutState extends State<SweetDonut> {

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sweet Donut',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7e0c0e)),
          ),
          Text('with nuts',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
              'Praesent id odio quits massa aliquet\ndictum ut eget,Aliquam erat',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [


              Text('Kkal: 268',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              Spacer(),
              Text('Weight: 190g',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text('Total price',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 40, top: 15),
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: Color(0xFF510002)),
                child: Text('Buy Now',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ],
          ),SizedBox(height: 10,),
          Text(
            '\$Rating',
            style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
          ),SizedBox(height: 10,),
          RatingBar.builder(
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.favorite,
              color: Color(0xFF7e0c0e),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }
}
