import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "We have included links to tips for students from various education boards.  These tips are very useful to learn and to prepare for examinations",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              child: Text("Cambridge International Study Tips"),
              onPressed: _launchURLcieTips,
            ),
            ElevatedButton(
              child: Text("IBDP Study Tips"),
              onPressed: _launchURLIBTips,
            )
          ],
        ),
      ),
    );
  }
}
