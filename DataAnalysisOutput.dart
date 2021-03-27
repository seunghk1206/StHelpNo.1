import 'dart:io';

void main() {
  var splitL = Analysis("Data.txt");
  print(splitL);
}

Analysis(var filename) {
  return File(filename).readAsString().then((String contents) {
    print(contents);
  });
}
