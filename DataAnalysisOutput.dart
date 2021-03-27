import 'dart:io';

void main(){
  var splitL = Analysis();
  print(splitL);
}
Analysis(){
  return File('Data.txt').readAsString().then((String contents) { print(contents);});
}