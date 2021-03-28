import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EventState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UpcomingEvents();
  }
}

class UpcomingEvents extends State<EventState> {
  var _eventIndex = 1;

  void _toggleEvent() {
    setState(() {
      _eventIndex = _eventIndex + 5;
    });
  }

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
                events[_eventIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[_eventIndex + 1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[_eventIndex + 2],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[_eventIndex + 3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                events[_eventIndex + 4],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
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
              ElevatedButton(
                child: Text("Load more Upcoming MUN conferences"),
                onPressed: _toggleEvent,
              ),
            ],
          ),
        ));
  }
}

// class ClassName extends addadsf extends statelesswidget
