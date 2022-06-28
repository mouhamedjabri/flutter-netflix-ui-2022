import 'package:flutter/material.dart';

import '../data/dataMoudel.dart';

class CardView extends StatefulWidget {
  CardView({Key? key, required this.isOriginal}) : super(key: key);
  bool isOriginal;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: widget.isOriginal ? 500 : 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: previewsLis.length,
        itemBuilder: (context, index) => Container(
          height: widget.isOriginal ? 450 : 200,
          width: widget.isOriginal ? 250 : 150,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(previewsLis[index].imgePath),
              fit: BoxFit.cover,
            )
          ),
        ),
      ),
    );
  }
}
