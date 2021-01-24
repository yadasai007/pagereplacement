import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'numbers.dart';

class LeastRecentlyUsed extends StatefulWidget {
  @override
  _LeastRecentlyUsedState createState() => _LeastRecentlyUsedState();
}

class _LeastRecentlyUsedState extends State<LeastRecentlyUsed> {
  Widget show(int i) {
    return Container(
      color: Colors.green,
      height: 30,
      width: 50,
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(i.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("least recently used"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[for (int j = 1; j < length; j++) show(x[j])],
              ),
            ),
            Container(
              child: Text("least recently used"),
            ),
          ],
        ),
      ),
    );
  }
}
