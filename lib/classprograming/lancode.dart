import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/localization/locale_constant.dart';
class codelan{
String cd;
Future<Locale> getLocale() async {
SharedPreferences _prefs = await SharedPreferences.getInstance();
String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
cd=languageCode;
print(cd);
}



}