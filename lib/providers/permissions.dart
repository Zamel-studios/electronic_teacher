import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  /// Requests storage permission from the user.
  static Future<bool> requestStoragePermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
    }
    return status.isGranted;
  }
}
