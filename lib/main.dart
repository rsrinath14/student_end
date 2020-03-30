import 'package:flutter/material.dart';
import './screens/mainscreen.dart';
import './widgets/chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AttendanceApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes:{
        '/chart': (ctx) => Chart(),
      },
    );
  }
}

