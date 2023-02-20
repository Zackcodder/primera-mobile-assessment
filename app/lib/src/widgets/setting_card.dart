import 'package:flutter/material.dart';

Widget card({
  String? text,
  IconData? icon,
  bool? themeSwitch,
}) {
  return GestureDetector(
    child: Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(12),
      width: 368,
      height: 40,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Container(
              width: 30,
              height: 30,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                // color: const Color(0xfff1f1f1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(icon)),
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$text',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

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

Widget cardSettingWithIcon({
  String? text,
  IconData? icon,
  bool? themeSwitch,
  Widget? widget
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text!),
    trailing: widget,
  );
}
