import 'package:flutter/material.dart';
import 'package:ready_berry/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF8DAE3),
        accentColor: Color(0xFFFDFCF8)
      ),
      home: HomeScreen(),
    );
  }
}

