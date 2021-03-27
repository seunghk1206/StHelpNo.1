import 'dart:io';

void main(){
  print(Analysis());
  
}
Analysis(){
  File('Data.txt').readAsString().then((String contents) { var splitL = contents.split("\n");});
}