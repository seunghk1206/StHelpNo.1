import 'dart:io';

void main(){
  var n;
  print(Analysis("Data.txt").then((String Contents){print(Contents.split(", ")); n = Contents.split(", ");}));
  print(n);
}

Analysis(var filename) {
  var splitList = File(filename).readAsString();
  return splitList;
}