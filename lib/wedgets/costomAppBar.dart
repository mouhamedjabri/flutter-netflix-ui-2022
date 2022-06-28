import 'package:flutter/material.dart';

class CosstomAppBar extends StatefulWidget {
   CosstomAppBar({Key? key,required this.colors}) : super(key: key);
  Color colors;
  @override
  State<CosstomAppBar> createState() => _CosstomAppBarState();
}

class _CosstomAppBarState extends State<CosstomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: widget.colors,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/nitflix.png",height: 57,width: 53,fit: BoxFit.fill,),
                Text("TV Shows",style: TextStyle(fontSize: 17.9,fontWeight: FontWeight.w400,color: Colors.white),),
                Text("Movies",style: TextStyle(fontSize: 17.9,fontWeight: FontWeight.w400,color: Colors.white),),
                Text("My List",style: TextStyle(fontSize: 17.9,fontWeight: FontWeight.w400,color: Colors.white),),
              ],

        ),
      ),
    );
  }
}
