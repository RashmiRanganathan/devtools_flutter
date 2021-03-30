import 'dart:math';

import 'package:flutter/material.dart';

class JankFrame extends StatefulWidget {
  @override
  _JankFrameState createState() => _JankFrameState();
}

class _JankFrameState extends State<JankFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Card(
        color: Colors.amber,
        margin: EdgeInsets.only(top: 190),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(4),
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.calculate,
                size: 50,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
              title: Text('${index % 40} = ${_fibo(index % 40)}'),
            ),
          ),
        ),
      ),
    );
  }

  static int _fibo(int index) {
    if (index <= 1) {
      print('INFO');
      return index;
    } else {
      return _fibo(index - 1) + _fibo(index - 2);
    }
  }
}
