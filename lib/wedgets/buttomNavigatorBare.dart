import 'package:flutter/material.dart';

import '../screens/HomeScreem.dart';

class ButtomNavigatorBareWidget extends StatefulWidget {
  const ButtomNavigatorBareWidget({Key? key}) : super(key: key);

  @override
  State<ButtomNavigatorBareWidget> createState() =>
      _ButtomNavigatorBareWidgetState();
}

class _ButtomNavigatorBareWidgetState extends State<ButtomNavigatorBareWidget> {
  List _screen = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  var corentState = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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

    );
  }
}
