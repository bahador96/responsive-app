import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DestopScffold extends StatefulWidget {
  const DestopScffold({super.key});

  @override
  State<DestopScffold> createState() => _DestopScffoldState();
}

class _DestopScffoldState extends State<DestopScffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDeffaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
