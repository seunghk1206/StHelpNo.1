import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class cbseMaterials extends StatelessWidget {
  _launchURLcbseWebsite() async {
    const url = 'https://www.cbse.gov.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseByjus() async {
    const url = 'https://byjus.com/cbse-study-material/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseNCERTguru() async {
    const url = 'https://www.ncertbooks.guru/study-material/';
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
            "CBSE Study Material",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              "CBSE stands for Central Board of Secondary Education.  CBSE is one of the most popular boards in India",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Times New Roman",
              ),
            ),
            ElevatedButton(
              child: Text("The CBSE official website"),
              onPressed: _launchURLcbseWebsite,
            ),
            ElevatedButton(
              child: Text("Byju's Free CBSE Resources"),
              onPressed: _launchURLcbseByjus,
            ),
            ElevatedButton(
              child: Text("Free PDF Study Material Downloads - NCERT Guru"),
              onPressed: _launchURLcbseNCERTguru,
            )
          ],
        )));
  }
}
