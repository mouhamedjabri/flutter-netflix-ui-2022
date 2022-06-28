import 'package:flutter/material.dart';

class CosstomSerche extends StatefulWidget {
  const CosstomSerche({Key? key}) : super(key: key);

  @override
  State<CosstomSerche> createState() => _CosstomSercheState();
}

class _CosstomSercheState extends State<CosstomSerche> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFF424242),
        child: TextFormField(
          cursorColor: Colors.white,

          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search for a show, movie, genre, e.t.c.",
            hintStyle: TextStyle(color: Color(0xFFC4C4C4),),
            suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.mic,size: 25,color: Color(0xFFC4C4C4),),
              ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.search_rounded,size: 25,color: Color(0xFFC4C4C4),),
            ),
            //prefix: Icon(Icons.search_rounded),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(20),
            //
            // ),
            
          ),
        ),
      ),
    );
  }
}
