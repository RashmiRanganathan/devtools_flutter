import 'package:flutter/material.dart';

import 'package:devtools_flutter/presentation/screens/jank_frame_screen.dart';
import 'package:devtools_flutter/presentation/screens/jank_screen.dart';
import 'package:devtools_flutter/presentation/screens/layout_screen.dart';

class DashBoard extends StatelessWidget {
  final contoller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: contoller,
      children: [
        LayoutInspector(),
        Jank(),
        JankFrame(),
      ],
    );
  }
}
