import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InternState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InternshipWidget();
  }
}

class InternshipWidget extends State<InternState> {
  var _internshipIndex = 1;

  void _toggleIntern() {
    setState(() {
      _internshipIndex = _internshipIndex + 5;
    });
  }

  final textList = File("Data.txt").readAsString();
  _launchURLintern() async {
    const url = 'https://internshala.com/internships/work-from-home-jobs';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLmpower() async {
    const url = 'https://forms.gle/QQPFWFzaHjeoFHFZA';
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
    var internships = {
      1: "Text Correction (Sankrit)",
      2: "Software Project Management",
      3: "Business Development (Sales)",
      4: "Diversity & Inclusion",
      5: "Graphic Design",
      6: "Operations",
      7: "Human Resources (HR) Work",
      8: "Document Formatting/Editing",
      9: "Android App Development",
      10: "CSR Coordination",
    };
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upcoming Internship Opportunities",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Internship opportunities available for students.  Note: All the internships mentioned here are virtual",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Text(
              "Social Media Team at MPower For Youth",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              child: Text("MPower For Youth Social Media Application Form"),
              onPressed: _launchURLmpower,
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            Text(
              internships[_internshipIndex],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5.0)),
            Text(
              internships[_internshipIndex + 1],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5.0)),
            Text(
              internships[_internshipIndex + 2],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5.0)),
            Text(
              internships[_internshipIndex + 3],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5.0)),
            Text(
              internships[_internshipIndex + 4],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            ElevatedButton(
              child: Text("Click here to find more internship opportunities"),
              onPressed: _launchURLintern,
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            ElevatedButton(
              child: Text("Load new internships"),
              onPressed: _toggleIntern,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)),
          ],
        ),
      ),
    );
  }
}
