import 'dart:convert';

import 'package:farm/servise/Global.dart';

Future<void> sendDataToESP32(String data) async {
  if (BluetoothManager.characteristic == null) {
    print("❌ Characteristic مش جاهز");
    return;
  }

  print("🔌 إرسال البيانات إلى ESP32...");

  await BluetoothManager.characteristic!.write(utf8.encode(data));

  print("📤 تم الإرسال: $data");
}
