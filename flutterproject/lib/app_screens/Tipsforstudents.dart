import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterproject/app_config/palette.dart';

class Tipsforstudents extends StatelessWidget {
  _launchURLcieTips() async {
    const url =
        'https://blog.cambridgeinternational.org/tips-for-effective-exam-preparation/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIBTips() async {
    const url =
        '//https://www.crimsoneducation.org/au/blog/test-prep/top-10-ib-study-tips/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseTips() async {
    const url = 'https://www.indiaeducation.net/cbse/preparation-tips.aspx';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLicseTips() async {
    const url =
        'https://www.askiitians.com/school-exams/cisce/icse/preparation-tips.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatTips() async {
    const url = 'https://blog.prepscholar.com/sat-tips-and-tricks-you-must-use';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: AppBar(
        title: Text(
          "Tips for Students",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "We have compiled links to tips for students from various education boards.  These tips are very useful to learn and to prepare for examinations",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              child: Text("Cambridge International Study Tips"),
              onPressed: _launchURLcieTips,
            ),
            ElevatedButton(
              child: Text("IBDP Study Tips"),
              onPressed: _launchURLIBTips,
            ),
            ElevatedButton(
              child: Text("CBSE Study Tips"),
              onPressed: _launchURLcbseTips,
            ),
            ElevatedButton(
              child: Text("ICSE Study Tips"),
              onPressed: _launchURLicseTips,
            ),
            ElevatedButton(
              child: Text("SAT Study Tips"),
              onPressed: _launchURLsatTips,
            )
          ],
        ),
      ),
    );
  }
}
