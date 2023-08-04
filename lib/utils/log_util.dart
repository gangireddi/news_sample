import 'package:flutter/foundation.dart';

class LogUtil {

  static log(String tag, dynamic data) {
    if (kDebugMode) {
      print("$tag: $data");
    }
  }
}