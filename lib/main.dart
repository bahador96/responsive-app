import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive/destop_scffold.dart';
import 'package:flutter_application_1/responsive/mobile_scffold.dart';
import 'package:flutter_application_1/responsive/responsive_layout.dart';
import 'package:flutter_application_1/responsive/tablet_scffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScffold: MobileScffold(),
        tableScffold: TableScffold(),
        desktopScffold: DestopScffold(),
      ),
    );
  }
}
