import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/util/my_box.dart';
import 'package:flutter_application_1/util/my_tile.dart';

class MobileScffold extends StatefulWidget {
  const MobileScffold({super.key});

  @override
  State<MobileScffold> createState() => _MobileScffoldState();
}

class _MobileScffoldState extends State<MobileScffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDeffaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const MyTile();
            },
          ))
        ],
      ),
    );
  }
}
