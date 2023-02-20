import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import '../shared/utils/themes/themes.dart';
import '../ui/settings_screen.dart';

class SettingScreenScreen extends StatefulWidget {
  const SettingScreenScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreenScreen> createState() => SettingScreenController();
}

class SettingScreenController extends State<SettingScreenScreen> {
  AppStateManager? appManager;

  bool changeTheme = false;

  changeThemeValue(value) {
    setState(() {
      changeTheme = value;
      appManager!.setTheme(changeTheme ? AppTheme.dark : AppTheme.white);
    });
  }

  @override
  Widget build(BuildContext context) {
    appManager = Provider.of<AppStateManager>(context);
    changeTheme = appManager!.themeData == appThemeData[AppTheme.dark]!;
    return SettingScreenView(this);
  }
}
