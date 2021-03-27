import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CambridgeContainer extends StatelessWidget {
  _launchURLCambridgeofficial() async {
    const url = 'https://www.cambridgeinternational.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcieChem() async {
    const url = 'https://www.chemguideforcie.co.uk/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLciePMT() async {
    const url = 'https://www.physicsandmathstutor.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("The Cambridge International Curriculum"),
        ElevatedButton(
          child: Text("The official Cambridge International Website"),
          onPressed: _launchURLCambridgeofficial,
        ),
        ElevatedButton(
          child: Text("A level chemistry revision material"),
          onPressed: _launchURLcieChem,
        ),
        ElevatedButton(
          child: Text("A level physics study materials"),
          onPressed: _launchURLciePMT,
        )
      ],
    );
  }
}
