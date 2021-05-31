import 'package:flutter/material.dart';
import 'part.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor:  Color(0xFF0A0E21),
        accentColor: Colors.cyan,
      )
         ,
      
      title: 'BMI',
      home: New(),
      
    );
  }
}

