import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Fix below here
class UpcomingEvents extends StatelessWidget {
  final textList = File("Data.txt").readAsString();
  @override
  Widget build(BuildContext context) {
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
                "Below are displayed upcoming Model United Nations conferences in India",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}

// class ClassName extends addadsf extends statelesswidget
