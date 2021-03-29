import 'package:devtools_flutter/presentation/screens/jank_screen.dart';
import 'package:devtools_flutter/presentation/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final contoller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: contoller,
      children: [
        LayoutInspector(),
        Jank(),
      ],
    );
  }
}
