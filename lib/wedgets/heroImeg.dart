import 'package:flutter/material.dart';

class HeroImg extends StatelessWidget {
  const HeroImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height /2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/heroImag.jpg"),
               fit: BoxFit.cover
             )
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height /2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black,Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
              )
          ),
        ),
      ],
    );
  }
}
