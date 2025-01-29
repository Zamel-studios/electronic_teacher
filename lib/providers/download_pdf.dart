import 'dart:io';
import 'package:electronic_teacher/providers/permissions.dart';
import 'package:electronic_teacher/views/widgets/dialogs.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void downloadFileFromAssets(String file_path, context) async {
  var path;
  PermissionService.requestStoragePermission();
  try {
    var time = DateTime.now().millisecondsSinceEpoch;
    var directory =
        await getExternalStorageDirectory(); // Get external directory
    var newPath = '${directory!.path}/Download';

    // Check if Download directory exists, if not create it
    var downloadDirectory = Directory(newPath);
    if (!await downloadDirectory.exists()) {
      await downloadDirectory.create(recursive: true);
    }

    path = '$newPath/file-$time.pdf';
    var file = File(path);

    // Assuming 'assets/image.jpg' is your asset file path
    final byteData = await rootBundle.load(file_path);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
  } catch (e) {
    CustomDialogs.showErrorDialog(context, "خطأ بالتحميل");
  }

  CustomDialogs.showSuccessDialog(
      context, "تم التحميل بنجاح في هذاالمسار" + "\n" + "$path");
}
