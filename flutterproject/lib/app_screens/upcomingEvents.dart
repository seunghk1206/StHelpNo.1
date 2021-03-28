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
    var events = {
      1: "Colloquium MUN",
      2: "Brainiac MUN",
      3: "Delhi School of Economics MUN",
      4: "8th World Congress on HMS",
      5: "Stay Home Model United Nations",
      6: "Longfellow Middle School MUN Conference",
      7: "Western Canada High School MUN 2021",
      8: "elbMUN Online Conference 2021",
      9: "Stay At Home Model United Nations 2021",
      10: "International Crisis Summit MUN 2021"
    };
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
                events[1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[2],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[4],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[5],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[6],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[7],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[8],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[9],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[10],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
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
