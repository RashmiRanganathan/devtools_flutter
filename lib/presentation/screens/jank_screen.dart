import 'dart:math';

import 'package:flutter/material.dart';

class Jank extends StatefulWidget {
  @override
  _JankState createState() => _JankState();
}

class _JankState extends State<Jank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Card(
        color: Colors.amber,
        margin: EdgeInsets.only(top: 190),
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index % 50 == 0) {
              return ExpensiveWidget(index);
            }
            return ImageWidget(index);
          },
        ),
      ),
    );
  }
}

class ExpensiveWidget extends StatelessWidget {
  final int index;

  ExpensiveWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 1; i < 100; i++) ImageWidget(index),
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  final int index;

  ImageWidget(this.index);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(4),
        child: ListTile(
          tileColor: Colors.white,
          leading: Icon(
            Icons.all_inclusive_rounded,
            size: 40,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
          title: Text(' Image ${index + 1}'),
        ),
      );
}
