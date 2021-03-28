import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingInternships extends StatelessWidget {
  final Future<String> textList = File("Data.txt").readAsString();
  @override
  Widget build(BuildContext context) {
    String initS = textList.toString();
    var splitL = initS.split(", ");
    return Scaffold(
        appBar: AppBar(
      title: Text(
        "Upcoming Internship Opportunities",
        textAlign: TextAlign.center,
      ),
    ));
  }
}
