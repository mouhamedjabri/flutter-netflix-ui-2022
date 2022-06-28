import 'package:flutter/material.dart';

class Titel extends StatelessWidget {
  Titel({Key? key,required this.titel,required this.padingTop}) : super(key: key);
  String titel;
  var padingTop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padingTop ,
      child: Text(titel,style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 25

      ),
      textAlign: TextAlign.start,),
    );
  }
}
