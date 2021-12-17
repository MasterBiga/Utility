
import 'dart:async';

import 'package:flutter/services.dart';

class Utility {
  static const MethodChannel _channel = MethodChannel('utility');

  void launcUrl(String url) {
    _channel.invokeMethod("launchUrl", [url]);
  }
}
