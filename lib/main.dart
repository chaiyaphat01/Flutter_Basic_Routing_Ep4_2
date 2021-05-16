import 'package:flutter/material.dart';
import 'package:flutter_routing/Home.dart';
import 'package:flutter_routing/setting.dart';
import 'package:flutter_routing/contact.dart';
import 'package:flutter_routing/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/setting': (context) => Setting(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
      },
    );
  }
}
