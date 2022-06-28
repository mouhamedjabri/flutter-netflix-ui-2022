import 'package:flutter/material.dart';


class CosstomButton extends StatelessWidget {
  CosstomButton({Key? key,required this.path,required this.titel}) : super(key: key);
  String path,titel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(path,height: 25,width: 25,),
        Text(titel,style: TextStyle(fontSize: 15.6,color: Colors.white,fontWeight: FontWeight.w600),)
      ],
    );
  }
}
