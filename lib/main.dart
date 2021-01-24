import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'fifo.dart';
import 'optimal.dart';
import 'least_recently_used.dart';
import 'numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page replacement",
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        "/pages": (context) => HomeScreen(),
        "/fifo": (context) => FIFO(),
        "/optimal": (context) => Optimal(),
        "/leastused": (context) => LeastRecentlyUsed(),
        "/numbers": (context) => Numbers(),
      },
      home: Numbers(),
    );
  }
}
