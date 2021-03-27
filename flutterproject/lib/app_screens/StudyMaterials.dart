import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IBstudymaterials.dart';
import 'CambridgeStudyMaterials.dart';

class StudyMaterials extends StatelessWidget {
  Future navigateToib(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => IBMaterialsContainer()));
  }

  Future navigateTocie(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CambridgeContainer()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Study Material"),
          backgroundColor: Colors.lightBlueAccent[400],
        ),
        body: Column(
          children: [
            Text("Study Materials for various curricula"),
            ElevatedButton(
                child: Text("IBDP resources"),
                onPressed: () {
                  navigateToib(context);
                }),
            ElevatedButton(
              child: Text("Cambridge International Resources"),
              onPressed: () {
                navigateTocie(context);
              },
            )
          ],
        ));
  }
}
