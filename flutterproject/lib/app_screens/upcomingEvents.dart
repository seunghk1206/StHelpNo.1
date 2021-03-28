import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Fix below here
class UpcomingEvents extends StatelessWidget {
  final textList = File("Data.txt").readAsString();
  _launchURLmun() async {
    const url = 'https://munfinder.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                splitL[0],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                splitL[1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                splitL[2],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                splitL[3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                splitL[4],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              ElevatedButton(
                child: Text(
                  "Click to view more upcoming MUN conferences in India",
                  textAlign: TextAlign.center,
                ),
                onPressed: _launchURLmun,
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              //Text(),
            ],
          ),
        ));
  }
}

// class ClassName extends addadsf extends statelesswidget
