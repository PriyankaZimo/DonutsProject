
import 'package:donuts_app/donuts/components/text_field_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonutsPage extends StatelessWidget {
  const DonutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.vertical_distribute_rounded,color: Colors.black,),
        actions: [
          Icon(Icons.drag_indicator ,color: Colors.black,size: 30,)
        ],
      ),body: Column(
      children: [
        TextFieldPage(),
      ],
    ),
    );
  }
}
