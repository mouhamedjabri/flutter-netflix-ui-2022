import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/dataMoudel.dart';

class PreviewsListView extends StatefulWidget {
  const PreviewsListView({Key? key}) : super(key: key);

  @override
  State<PreviewsListView> createState() => _PreviewsListViewState();
}

class _PreviewsListViewState extends State<PreviewsListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: previewsLis.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(previewsLis[index].imgePath,),
            ),
          );
        },
      ),
    );
  }
}
