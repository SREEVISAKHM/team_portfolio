import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}
