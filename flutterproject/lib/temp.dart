import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new Scaffold(
    body: new Center(
      child: new RaisedButton(
        onPressed: _launchURL,
        child: new Text('Show Flutter homepage'),
      ),
    ),
  ));
}

void _launchURL() {}
