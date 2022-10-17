import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferance {
  static SharedPreferences? sharedPreferences;

  Future initSharedPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future setPhoneNumber(String phoneNumber) async {
    return await sharedPreferences?.setString("phone", phoneNumber);
  }

  getPhoneNumber() {
    return sharedPreferences?.getString("phone");
  }
}
