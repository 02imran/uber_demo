import 'package:flutter/material.dart';
import 'package:uber_clone/home/home_page.dart';
import 'package:uber_clone/home/where_to.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhereTo(),
    );
  }
}
