import 'package:flutter/material.dart';

class ChoceCard extends StatelessWidget {
   ChoceCard({Key? key,required this.path,required this.text}) : super(key: key);
  String path,text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 100,height: 92,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(path,fit: BoxFit.fill,width: 100,height: 92,),
          SizedBox(height: 2,),
          Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
