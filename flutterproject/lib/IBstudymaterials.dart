import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IBMaterialsContainer extends StatelessWidget {
  _launchURLIBguides() async {
    const url = 'https://ibguides.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIBofficial() async {
    const url = 'https://www.ibo.org/';
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
        Column(
          children: [
            Text("The International Baccalaureate Diploma Program (IBDP)"),
            ElevatedButton(
              child: Text("IB Major Study Materials"),
              onPressed: _launchURLIBguides,
            ),
            ElevatedButton(
              child: Text("The official IBO website"),
              onPressed: _launchURLIBofficial,
            ),
          ],
        )
      ],
    );
  }
}
