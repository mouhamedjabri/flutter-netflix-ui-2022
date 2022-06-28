import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/sercheScreen.dart';

import '../screens/HomeScreem.dart';
import 'comingson.dart';
import 'download.dart';
import 'more.dart';

class NaveScreen extends StatefulWidget {
  const NaveScreen({Key? key}) : super(key: key);

  @override
  State<NaveScreen> createState() =>
      _NaveScreenState();
}

class _NaveScreenState extends State<NaveScreen> {
  List _screen = [
    HomeScreen(),
    SercheScreen(),
    ComingSon(),
    Download(),
    More(),
  ];
  var corentState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_play_next),
              label: "Coming Soon"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download),
              label: "Downloads"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More"
          ),
        ],
        backgroundColor: Color(0xFF121212),
        type: BottomNavigationBarType.fixed,
        currentIndex: corentState,
        onTap: (index){
          setState(() {
            corentState = index;
          });
        },
        selectedFontSize: 17,
        unselectedFontSize: 15,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xFF8C8787),
      ),
      body: _screen[corentState],
    );
  }
}
