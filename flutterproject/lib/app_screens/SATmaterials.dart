import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SATmaterials extends StatelessWidget {
  _launchURLsatOff() async {
    const url = 'https://collegereadiness.collegeboard.org/sat';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatPT() async {
    const url =
        'https://collegereadiness.collegeboard.org/sat/practice/full-length-practice-tests';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatKA() async {
    const url = 'https://www.khanacademy.org/SAT';
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
            "SAT Exam Study Materials",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              "The SAT examination is a common entrance test, administed by the College Board.  It is mainly used in the college admissions to the United States",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Times New Roman",
              ),
            ),
            ElevatedButton(
              child: Text("The official SAT website"),
              onPressed: _launchURLsatOff,
            ),
            ElevatedButton(
              child: Text("Official SAT Practice Tests"),
              onPressed: _launchURLsatPT,
            ),
            ElevatedButton(
              child: Text("Khan Academy Practice Resources"),
              onPressed: _launchURLsatKA,
            )
          ],
        )));
  }
}
