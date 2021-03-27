import 'package:flutter/material.dart';
import 'package:flutterproject/app_screens/screens.dart'; //dude we have all screens imoprted here
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Ultimate Student Helper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF21BFBD),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(), //splash screen when opening
    );
  }
}


