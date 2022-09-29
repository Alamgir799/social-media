import 'package:flutter/foundation.dart';

class ApiKeys {
  static String appID = "";
  static String appKey = "";
  static String messagingSenderId = "380629265452";
  static String projectId = "the-metabitz-networking-e957f";
  collectAppID() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      appID = "1:380629265452:android:63b6ce45d1c28e281d3589";
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      appID = "1:380629265452:ios:31a0d1eca8a9a6651d3589";
    } else {
      appID = "1:380629265452:web:c62b12671df54d071d3589";
    }
  }

  collectApiKey() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      appKey = "AIzaSyB_LUWr68HitUx8vXdpR55l7k8zb_48UlA";
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      appKey = "AIzaSyAc9-O4dP12PUn-Qwxz0qSeBxggkl0xqWE";
    } else {
      appKey = "AIzaSyCC3nwVSXPWd-2riCse93oOc19waBLJo18";
    }
  }
}
