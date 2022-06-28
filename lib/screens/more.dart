import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../wedgets/more-card.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoreCard(
                      assets: "assets/kids.png", height: 65, titel: "Kids"),
                  MoreCard(
                      assets: "assets/face-1.png",
                      height: 60,
                      titel: "Emenalo"),
                  MoreCard(
                      assets: "assets/face-2.png", height: 60, titel: "Onyeka"),
                  MoreCard(
                      assets: "assets/face-3.png", height: 60, titel: "Thelma"),
                  MoreCard(assets: "assets/addmore.png", height: 60, titel: ""),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/pen.png",
                    height: 12,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF1A1A1A),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/msg.png",
                          height: 35,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(color: Color(0xFFC4C4C4)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.black,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))
                        ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Copy Link",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/whatsapp.png",width: 40,),
                        Container(
                          color: Colors.white,
                          height: 50,
                          width: 2,
                        ),
                        Image.asset("assets/facebook.png",width: 40,),
                        Container(
                          color: Colors.white,
                          height: 50,
                          width: 2,
                        ),
                        Image.asset("assets/gmail.png",width: 40,),
                        Container(
                          color: Colors.white,
                          height: 50,
                          width: 2,
                        ),
                        Column(

                          children: [
                            Image.asset("assets/more.png",height: 40,),
                            Text("MORE" ,style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),)

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
              child: Row(
                children: [
                  Image.asset("assets/chek.png",width: 29,),
                  SizedBox(width: 10,),
                  Text("My List" ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),),
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App Settings " ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("Account" ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("Help" ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                  SizedBox(height: 5,),
                  Text("Sign Out" ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
