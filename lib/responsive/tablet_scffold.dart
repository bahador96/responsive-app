import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class TableScffold extends StatefulWidget {
  const TableScffold({super.key});

  @override
  State<TableScffold> createState() => _TableScffoldState();
}

class _TableScffoldState extends State<TableScffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDeffaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
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
