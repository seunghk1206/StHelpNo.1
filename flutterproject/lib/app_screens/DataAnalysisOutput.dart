import 'dart:io';

class AnalysisClass {
  // ignore: non_constant_identifier_names
  Analysis(var filename) {
    var splitList;
    File(filename).readAsString().then((String contents) {
      splitList = contents.split(", ");
      return (splitList);
    });
  }
}
