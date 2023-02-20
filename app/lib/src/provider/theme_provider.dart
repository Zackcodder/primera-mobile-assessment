import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/utils/themes/themes.dart';




class AppStateManager with ChangeNotifier {
  ThemeData? _themeData;
  int preferredTheme = 0;
  final _themePreference = "theme_preference";
  bool isLoadingTheme = true;

  AppStateManager() {
    _loadAppSettings();
  }

  //app theme manager
  void _loadAppSettings() {
    SharedPreferences.getInstance().then((prefs) {
     
      //load theme
      try {
        preferredTheme = prefs.getInt(_themePreference) ?? 0;
      } catch (e) {
        // quietly pass
      }
      _themeData = appThemeData[AppTheme.values[preferredTheme]]!;

      isLoadingTheme = false;
      notifyListeners();
    });
  }

  /// Use this method on UI to get selected theme.
  ThemeData get themeData {
    _themeData ??= appThemeData[AppTheme.white]!;
    return _themeData!;
  }

  /// Sets theme and notifies listeners about change.
  setTheme(AppTheme theme) async {
    _themeData = appThemeData[theme]!;
    // Here we notify listeners that theme changed
    // so UI have to be rebuild
    notifyListeners();
    // Save selected theme into SharedPreferences
    var prefs = await SharedPreferences.getInstance();
    preferredTheme = AppTheme.values.indexOf(theme);
    prefs.setInt(_themePreference, preferredTheme);
  }


  // getFromLocalStorage() method will get data from the local storage
Future getFromLocalStorage({String? name}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? data = prefs.getString(name!);
  return data;
}

//remove store data from local storage
removeFromLocalStorage({String? name}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(name!);
}

}
