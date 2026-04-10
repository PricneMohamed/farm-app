import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Stream<int> getGasSensorStream(BluetoothCharacteristic characteristic) async* {
  int gasVal = 0;
  await characteristic.setNotifyValue(true);
  // yield* characteristic.value.map((value) {
  //   print("value => $value");
  //   gasVal = value[0] | (value[1] << 8) | (value[2] << 16) | (value[3] << 24);
  //   print("gasValgasValgasValgasValgasVal => $gasVal");
  //   return gasVal;
  // });
}
