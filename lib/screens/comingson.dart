import 'package:flutter/material.dart';

import '../data/dataMoudel.dart';

class ComingSon extends StatefulWidget {
  const ComingSon({Key? key}) : super(key: key);

  @override
  State<ComingSon> createState() => _ComingSonState();
}

class _ComingSonState extends State<ComingSon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 16),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/notification.png",
                      height: 19,
                      width: 19,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21.0, bottom: 25),
                child: Column(
                  children: [
                    _noticationCard("assets/cominson/img-1.png", "New Arrival",
                        "El Chapo", "Nov 6"),
                    _noticationCard("assets/cominson/img-2.png", "New Arrival",
                        "Peaky Blinders", "Nov 6"),
                  ],
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cominSonList.length,
                itemBuilder: (context, index) => bodyCard(cominSonList[index].titel,cominSonList[index].resumi,cominSonList[index].category,cominSonList[index].path),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Container _noticationCard(
    String path,
    String text1,
    String text2,
    String text3,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            path,
            height: 100,
            width: MediaQuery.of(context).size.width * 0.5 - 20,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              Text(
                text2,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Text(
                text3,
                style: TextStyle(fontSize: 13, color: Color(0xFF424242)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container bodyCard(String titel, resumi, category, path) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            path,
            height: 195,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/notification-2.png",
                      width: 23,
                      height: 27,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  width: 66,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/share.png",
                      width: 23,
                      height: 27,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Season 1 Coming December 14",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  titel,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(resumi,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                    softWrap: true),
                SizedBox(
                  height: 16,
                ),
                Text(category,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.white),
                    softWrap: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}
