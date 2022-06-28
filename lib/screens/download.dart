import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 36.0),
                child: Text("Smart Downloads",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Introducing Downloads For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/sircel.png",
                  height: 177,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 26,horizontal: 11),
              color: Colors.blueAccent,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                style: ButtonStyle(
                ),
                onPressed: () {},
                child: Text(
                  "SETUP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
