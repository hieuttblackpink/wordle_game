import 'dart:io';

class AppConstant {
  static const Duration networkReceiveTimeout = Duration(seconds: 2);
  static const Duration networkConnectTimeout = Duration(seconds: 2);
  static const Duration networkSendTimeout = Duration(seconds: 2);

  static Map<String, dynamic> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'client-secret': 'hieutt',
    'client-id': 'hieutt',
    'package-name': 'com.hieutt.app',
    'platform': Platform.isAndroid ? 'android' : 'ios',
    'Authorization': "access_token"
  };

  static const String dbTableWordleHistory = "Wordle_History";
}
