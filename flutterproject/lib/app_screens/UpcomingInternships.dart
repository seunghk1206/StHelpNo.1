import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UpcomingInternships extends StatelessWidget {
  final textList = File("Data.txt").readAsString();
  _launchURLintern() async {
    const url = 'https://internshala.com/internships';
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
          "Upcoming Internship Opportunities",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Internship opportunities available for students",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              "MPower For Youth is a youth empowerment initiative, founded by Mihir Mutyampeta. It aims to empower the underprivileged youth of India mentally and financially.  The organization is currently recruiting for their social media team.  Click the link below to access the application form",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(onPressed: null, child: null),
            ElevatedButton(
              child: Text("Click here to find more internship opportunities"),
              onPressed: _launchURLintern,
            )
          ],
        ),
      ),
    );
  }
}
