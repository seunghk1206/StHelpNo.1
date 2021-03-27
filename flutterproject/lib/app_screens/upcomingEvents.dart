import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class UpcomingEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upcoming Conferences and Events",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
              "Below is a list of upcoming events, MUN conferences, and any other opportunities open to students.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ))
        ],
      )),
    );
  }
}
