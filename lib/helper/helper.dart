import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static const String USER_ID = 'user-id';
  static const String IS_LOGIN = 'is-login';
  static const String SELECTED_CITY = 'selectedCity';
  static const String USER_NAME = 'user-name';
  static const String USER_IMAGE = "file_path";
  static SharedPreferences? _pref;

  static final PrefHelper _instance = PrefHelper._privateConstructor();

  // Add a static flag to ensure initialization only happens once
  static bool _initialized = false;

  PrefHelper._privateConstructor() {
    if (!_initialized) {
      throw Exception('Call initSharedPref() before using PrefHelper');
    }
  }

  factory PrefHelper() {
    return _instance;
  }

  static Future<void> initSharedPref() async {
    if (!_initialized) {
      _pref = await SharedPreferences.getInstance();
      _initialized = true;
    }
  }

  Future<void> removeCache() async {
    setBool(PrefHelper.IS_LOGIN, false);
    setString(PrefHelper.SELECTED_CITY, "");
    setString(PrefHelper.USER_ID, "");
    setString(PrefHelper.USER_IMAGE, "");
    setString(PrefHelper.USER_NAME, "");
  }

  Future<bool> setString(String key, String value) async {
    return await _pref!.setString(key, value);
  }

  String getString(String key) {
    if (_pref!.containsKey(key)) {
      return _pref!.getString(key)!;
    } else {
      return '';
    }
  }

  Future<bool> setBool(String key, bool value) async {
    return _pref!.setBool(key, value);
  }

  bool getBool(String key) {
    return _pref!.getBool(key) ?? false;
  }
}
