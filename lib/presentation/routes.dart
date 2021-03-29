import 'package:flutter/material.dart';
import 'package:devtools_flutter/common/route_constants.dart';
import 'package:devtools_flutter/presentation/screens/layout_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => {
        RouteList.inital: (context) => LayoutInspector(),
        RouteList.layoutInspector: (context) => LayoutInspector(),
      };
}
