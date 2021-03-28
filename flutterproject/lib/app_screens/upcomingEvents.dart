import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'dart:async';
import 'dart:core';

// Fix below here
class UpcomingEvents extends StatelessWidget {
  final Future<String> textList = File("Data.txt").readAsString();
=======
import 'package:url_launcher/url_launcher.dart';

// Fix below here
class UpcomingEvents extends StatelessWidget {
  _launchURLmun() async {
    const url = 'https://munfinder.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final textList = File("Data.txt").readAsString();
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                splitL[0],
=======
                "Upcoming Model United Nations conferences in India",
>>>>>>> Stashed changes
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Click to view more upcoming MUN conferences in India",
                  textAlign: TextAlign.center,
                ),
                onPressed: _launchURLmun,
              )
              //Text(),
            ],
          ),
        ));
  }
}
