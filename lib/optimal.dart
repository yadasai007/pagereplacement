import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'numbers.dart';

class Optimal extends StatefulWidget {
  @override
  _OptimalState createState() => _OptimalState();
}

class _OptimalState extends State<Optimal> {
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
          title: Text("optimal"),
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
              child: Text("optimal"),
            ),
          ],
        ),
      ),
    );
  }
}
