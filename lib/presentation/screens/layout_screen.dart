import 'package:flutter/material.dart';

class LayoutInspector extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.amber,
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 200),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlutterLogo(),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                      '''There’s a wide variety of tools and features to help debug Flutter applications.'''),
                )
              ],
            ),
          ),
        ),
      );
}
