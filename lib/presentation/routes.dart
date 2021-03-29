import 'package:flutter/material.dart';
import 'package:devtools_flutter/common/constants/route_constants.dart';

import 'package:devtools_flutter/presentation/screens/jank_frame_screen.dart';
import 'package:devtools_flutter/presentation/screens/page_view.dart';
import 'package:devtools_flutter/presentation/screens/layout_screen.dart';
import 'package:devtools_flutter/presentation/screens/jank_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => {
        RouteList.inital: (context) => DashBoard(),
        RouteList.layoutInspector: (context) => LayoutInspector(),
        RouteList.jank: (context) => Jank(),
        RouteList.jankFrame: (context) => JankFrame(),
      };
}
