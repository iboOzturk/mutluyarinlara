import 'dart:io';
import '../Variables/global.dart' as global;
import 'package:device_info/device_info.dart';


Future<String> getId() async {
  var deviceInfo = DeviceInfoPlugin();
  if (Platform.isIOS) { // import 'dart:io'
    var iosDeviceInfo = await deviceInfo.iosInfo;
    print(iosDeviceInfo.toString());
    return iosDeviceInfo.identifierForVendor; // unique ID on iOS
  } else {
    var androidDeviceInfo = await deviceInfo.androidInfo;
    global.androidId=androidDeviceInfo.androidId.toString();
    print("ANDROİDİD ASDASDSADASDA: "+androidDeviceInfo.androidId.toString());
    // return androidDeviceInfo.androidId; // unique ID on Android
  }
}
