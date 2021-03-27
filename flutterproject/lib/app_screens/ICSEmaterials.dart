import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ICSEmaterials extends StatelessWidget {
  _launchURLcisce() async {
    const url = 'https://www.cisce.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLbyjusICSE() async {
    const url = 'https://byjus.com/icse/icse-study-material/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLicsePast1() async {
    const url =
        'https://www.aplustopper.com/icse-previous-year-papers-solutions-class-10/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLicsePast2() async {
    const url = 'https://byjus.com/icse/icse-10-years-solved-papers/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ICSE Study Materials",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              "ICSE, standing for Indian Certificate of Secondary Education, is a popular board of education in India",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Times New Roman",
              ),
            ),
            ElevatedButton(
              child: Text(
                  "The official website of CISCE, the parent body of ICSE"),
              onPressed: _launchURLcisce,
            ),
            ElevatedButton(
              child: Text("Byju's Free ICSE study materials"),
              onPressed: _launchURLbyjusICSE,
            ),
            ElevatedButton(
              child: Text("Applu's Topper Website - Solved Past Papers"),
              onPressed: _launchURLicsePast1,
            ),
            ElevatedButton(
              child: Text("Byju's Free Solved Past Papers"),
              onPressed: _launchURLicsePast2,
            )
          ],
        )));
  }
}
