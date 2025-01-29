import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

  void downloadFileFromAssets(String file_path) async {
  var time = DateTime.now().millisecondsSinceEpoch;
  var directory = await getExternalStorageDirectory(); // Get external directory
  var newPath = '${directory!.path}/Download';

  // Check if Download directory exists, if not create it
  var  downloadDirectory = Directory(newPath);
  if (!await downloadDirectory.exists()) {
    await downloadDirectory.create(recursive: true);
  }

  var path = '$newPath/file-$time.pdf';
  var file = File(path);

  // Assuming 'assets/image.jpg' is your asset file path
  final byteData = await rootBundle.load(file_path);
  await file.writeAsBytes(
    byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes)
  );
}
