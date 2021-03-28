import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalysisClass {
  // ignore: non_constant_identifier_names
  Analysis(var filename) {
    var splitList;
    File(filename).readAsString().then((String contents) {
      splitList = contents.split(", ");
      return (splitList);
    });
  }
}

abstract class Intermediate extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Analysis(var filename) {
    var splitList;
    File(filename).readAsString().then((String contents) {
      splitList = contents.split(", ");
      return (splitList);
    });
  }
}

// Fix below here
class UpcomingEvents extends Intermediate {
  final textList = Analysis("Data.txt");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Upcoming MUN in India"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Below are displayed upcoming Model United Nations ")
            ],
          ),
        ));
  }
}

// class ClassName extends addadsf extends statelesswidget
