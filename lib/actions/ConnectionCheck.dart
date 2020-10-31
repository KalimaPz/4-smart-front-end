import 'package:connectivity/connectivity.dart';

class ConnectionCheck {
  static ConnectivityResult connectivityResult;
  static Future<bool> check() async {
    connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else
      return false;
  }
}
