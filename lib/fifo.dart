import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'numbers.dart';

class FIFO extends StatefulWidget {
  @override
  _FIFOState createState() => _FIFOState();
}

class _FIFOState extends State<FIFO> {
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
          title: Text("FIFO"),
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
              child: Text("FIFO"),
            ),
          ],
        ),
      ),
    );
  }
}
