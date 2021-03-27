import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IBstudymaterials.dart';

class StudyMaterials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Study Materials for various curricula"),
        ElevatedButton(
          child: Text("IBDP resources"),
          onPressed: IBstudymaterials,
        )
      ],
    );
  }
}
