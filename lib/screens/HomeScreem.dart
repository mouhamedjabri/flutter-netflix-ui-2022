import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../wedgets/buttomNavigatorBare.dart';
import '../wedgets/cardView.dart';
import '../wedgets/cosstomButton.dart';
import '../wedgets/costomAppBar.dart';
import '../wedgets/heroImeg.dart';
import '../wedgets/previewsListView.dart';
import '../wedgets/titel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final double width = MediaQuery.of(context).size.width;
  late ScrollController scrollcontroller;
  Color color = Color(0xFF00FFFFFF);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollcontroller = ScrollController();
    scrollcontroller.addListener(() {
      if (scrollcontroller.offset.toInt() <9){
        print(scrollcontroller.offset.toInt());
        setState(() {
          color = Color(0xFF00FFFFFF);
        });
      }else{
        setState(() {
          color = Color(0xFF000000);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width,200.0),
          child: CosstomAppBar(colors: color,),
        ),
      body: SingleChildScrollView(
        controller: scrollcontroller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroImg(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/topten.png",height: 25,width: 25,),
                SizedBox(width: 5,),
                Text("#2 in Morocco Today",style: TextStyle(fontSize: 16.7,color: Colors.white,fontWeight: FontWeight.w700),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CosstomButton(path: "assets/add-2.png",titel: "My List"),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0,left: 42,right: 42),
                  child: FlatButton(
                      height: 45,
                      color: Color(0xFFC4C4C4),
                      child: Row(
                      children: [
                        Icon(Icons.play_arrow,color: Colors.black,size: 40),
                        SizedBox(width: 15,),
                        Text("Play",style: TextStyle(fontSize: 20.7,color: Colors.black,fontWeight: FontWeight.w700),)
                      ],
                    ),onPressed: (){},),
                ),

                CosstomButton(path: "assets/info.png",titel: "Info"),
              ],
            ),
            Titel(titel: "Previews",padingTop: EdgeInsets.only(top: 43,left: 16,bottom: 22)),
            PreviewsListView(),
            Titel(titel: "Popular on Netflix",padingTop: EdgeInsets.only(top: 43,left: 16,bottom: 22)),
            CardView(isOriginal: false),
            Titel(titel: "Netflix Originals",padingTop: EdgeInsets.only(top: 43,left: 16,bottom: 22)),
            CardView(isOriginal: true),
            Titel(titel: "Nollywood Movies & TV",padingTop: EdgeInsets.only(top: 43,left: 16,bottom: 22)),
            CardView(isOriginal: false),
          ],
        ),
      ),
    );
  }
}
