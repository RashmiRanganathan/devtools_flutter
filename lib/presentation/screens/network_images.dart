import 'package:flutter/material.dart';

import 'package:devtools_flutter/common/utils/image_utils.dart';

class NetworkList extends StatefulWidget {
  @override
  _NetworkListState createState() => _NetworkListState();
}

class _NetworkListState extends State<NetworkList> {
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
        margin: EdgeInsets.only(top: 190),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _counter,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(4),
            child: ListTile(
              tileColor: Colors.white,
              leading: Image(
                key: Key(index.toString()),
                image: NetworkImage(
                  getImageUrl(index + 1),
                ),
              ),
              title: Text(' Image ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
