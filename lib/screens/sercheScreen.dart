import 'package:flutter/material.dart';

import '../data/dataMoudel.dart';
import '../wedgets/cosstomSerche.dart';

class SercheScreen extends StatefulWidget {
  const SercheScreen({Key? key}) : super(key: key);

  @override
  State<SercheScreen> createState() => _SercheScreenState();
}

class _SercheScreenState extends State<SercheScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width,200.0),
        child: CosstomSerche(),
      ),

      body: SafeArea(
        child:Container(
          color: Colors.black,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 21.0, bottom: 21.0),
                  child: Text(
                    "Top Searches",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: previewsLis.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        //height: 100,
                        color: Color(0xFF424242),
                        margin: EdgeInsets.only(bottom: 6),
                        child: ListTile(
                          // focusColor: Colors.black,
                          tileColor: Color(0xFF424242),
                          leading: Transform.translate(
                              child: Image.asset(
                                previewsLis[index].imgePath,
                                width: 146,
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                              offset: Offset(-17, 0)),
                          title: Text(
                            previewsLis[index].filmName,
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(
                            Icons.play_arrow,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },

                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

// class _CardSersh extends StatelessWidget {
//   _CardSersh({Key? key, required this.name, required this.imgPath})
//       : super(key: key);
//   String name, imgPath;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
