import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

List<int> x = [0];
int length = 0;

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  String number;
  int i = 0;

  Widget addWidget(int i) {
    if (length == 0) {
      return Container(
        height: 30,
        width: 50,
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Text(""),
      );
    }
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
                hintText: 'Enter Page number',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                number = value;
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[for (int j = 1; j <= i; j++) addWidget(x[j])],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                length += 1;
                x.add(int.parse(number));
                number = "";
                i = i + 1;
              });
            },
            child: Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("NEXT"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                x.add(int.parse(number));
                length += 1;
                Navigator.pushNamed(context, "/pages");
              });
            },
            child: Container(
              height: 50,
              width: 100,
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("END"),
            ),
          )
        ],
      ),
    );
  }
}
