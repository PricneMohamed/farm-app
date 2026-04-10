import 'package:permission_handler/permission_handler.dart';

class AppPermissions {
  static Future<bool> requestBluetoothPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();

    bool allGranted = statuses.values.every((status) => status.isGranted);

    if (allGranted) {
      print("Permissions granted");
    } else {
      print("Permissions denied");
    }

    return allGranted;
  }
}