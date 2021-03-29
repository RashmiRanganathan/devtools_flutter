import 'dart:math';

import 'package:devtools_flutter/common/utils/image_utils.dart';
import 'package:flutter/material.dart';

class Jank extends StatefulWidget {
  @override
  _JankState createState() => _JankState();
}

class _JankState extends State<Jank> {
  int _counter = 20;
  ScrollController _scrollController;

  void _addMoreImages() {
    setState(() {
      _counter += 10;
    });
  }

  _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent) {
      _addMoreImages();
    }
  }

  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Card(
        color: Colors.amber,
        margin: EdgeInsets.only(top: 150),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _counter,
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
