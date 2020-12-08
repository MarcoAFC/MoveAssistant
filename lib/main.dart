import 'package:flutter/material.dart';
import 'splash.dart';
import 'Colors.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Move Assistant',
      theme: ThemeData(
        primaryColor: BackGroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}
