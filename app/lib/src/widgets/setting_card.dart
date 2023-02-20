import 'package:flutter/material.dart';

Widget cardSetting({
  String? text,
  IconData? icon,
  bool? themeSwitch,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text!),
  );
}

Widget cardSettingWithColor({
  String? text,
  IconData? icon,
  bool? themeSwitch,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.red,
    ),
    title: Text(
      text!,
      style: const TextStyle(color: Colors.red),
    ),
  );
}

Widget cardSettingWithIcon(
    {String? text, IconData? icon, bool? themeSwitch, Widget? widget}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text!),
    trailing: widget,
  );
}
