import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:core';

// Fix below here
class UpcomingEvents extends StatelessWidget {
  final Future<String> textList = File("Data.txt").readAsString();
  @override
  Widget build(BuildContext context) {
    String initS = textList.toString();
    var splitL = initS.split(", ");
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Upcoming MUN in India",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                splitL[0],
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
