import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  MoreCard({Key? key,required this.height,required this.assets,required this.titel}) : super(key: key);
  double height;
  String titel;
  String assets;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: height,
            child: Image.asset(
             assets
            ),
          ),
          Text(titel,style: TextStyle(fontSize: 12.35,color: Colors.white,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
