import 'package:devtools_flutter/common/route_constants.dart';
import 'package:devtools_flutter/presentation/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev tools',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.getAll(),
      initialRoute: RouteList.layoutInspector,
    );
  }
}
