import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'numbers.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int n;
  Row buttons() {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              print(x);
              print(length);
              Navigator.pushNamed(context, "/fifo");
            });
          },
          child: Container(
            color: Colors.red,
            width: 80,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "FIFO",
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, "/leastused");
            });
          },
          child: Container(
            color: Colors.red,
            width: 80,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "Least Used",
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, "/optimal");
            });
          },
          child: Container(
            color: Colors.red,
            width: 80,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "Optimal",
            ),
          ),
        )
      ],
    );
  }

  HomeScreen(int n) {
    this.n = n;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page replacement algorithms"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            buttons()
          ],
        ),
      ),
    );
  }
}
