import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScffold;
  final Widget tableScffold;
  final Widget desktopScffold;
  const ResponsiveLayout({
    super.key,
    required this.mobileScffold,
    required this.tableScffold,
    required this.desktopScffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        if (p1.maxWidth < 500) {
          return mobileScffold;
        } else if (p1.maxWidth < 1100) {
          return tableScffold;
        } else {
          return desktopScffold;
        }
      },
    );
  }
}
