import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../wedgets/choce-card.dart';
import 'HomeScreem.dart';
import 'navScrren.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 37.8,
                      width: 138,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 27.41,
                    ),
                    child: Image.asset(
                      "assets/pen.png",
                      height: 18.59,
                      width: 18.59,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 133,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 75.0, left: 75.0),
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 20),
                  children: [
                    GestureDetector(
                      child: ChoceCard(
                        path: "assets/face-1.png",
                        text: "Emenalo",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NaveScreen()));
                      },
                    ),
                    GestureDetector(
                      child: ChoceCard(
                        path: "assets/face-2.png",
                        text: "Onyeka",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NaveScreen()));
                      },
                    ),
                    GestureDetector(
                      child: ChoceCard(
                        path: "assets/face-3.png",
                        text: "Thelma",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NaveScreen()));
                      },
                    ),
                    GestureDetector(
                      child: ChoceCard(
                        path: "assets/kids.png",
                        text: "Kids",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NaveScreen()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: GestureDetector(
                  onTap: (){
                    print("add");
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/add.png",
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Add Profile",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
