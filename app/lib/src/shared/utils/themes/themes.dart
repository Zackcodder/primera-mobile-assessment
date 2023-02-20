import 'package:flutter/material.dart';

import '../../colors.dart';

enum AppTheme { white, dark }

/// Returns enum value name without enum class name.
String enumName(AppTheme anyEnum) {
  return anyEnum.toString().split('.')[1];
}

Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.white: ThemeData(
    cardColor: Colors.white,

    fontFamily: "Raleway",
    dialogTheme: const DialogTheme(
        titleTextStyle: TextStyle(
      color: Colors.black,
    )),
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    //primarySwatch: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 3, 29, 83),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontFamily: 'Raleway',
      ),
      headline4: TextStyle(
        color: Colors.black54,
        fontFamily: 'Raleway',
      ),
      subtitle2: TextStyle(
        color: Colors.white70,
        fontFamily: 'Raleway',
        fontSize: 18.0,
      ),
    ),
  ),
  AppTheme.dark: ThemeData(
    drawerTheme:
        DrawerThemeData(elevation: 0, backgroundColor: AppColors.black),
    cardColor: Colors.black,
    primaryColorDark: Colors.black,
    //primarySwatch: mycolor,
    scaffoldBackgroundColor: AppColors.black,

    //primaryColor: FlexThemeData.dark(scheme: _scheme, darkIsTrueBlack: true);
    brightness: Brightness.dark,
    dialogTheme: const DialogTheme(
        titleTextStyle: TextStyle(
      color: Colors.white,
    )),
    bottomSheetTheme: const BottomSheetThemeData(
        //backgroundColor: AppColors.grey_90,
        ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.greyscale400Color),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: AppColors.greyscale400Color),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    dividerColor: Colors.grey.shade800,
    //bottomAppBarTheme: BottomAppBarTheme(color: AppColors.grey_90),
    cardTheme: const CardTheme(
        //color: AppColors.grey_80,
        ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.grey,
        fontSize: 20.0,
        fontFamily: 'Raleway',
      ),
      subtitle2: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
        fontSize: 18.0,
      ),
      headline4: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      headline3: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      headline2: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      headline1: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      subtitle1: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      bodyText2: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      bodyText1: TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway',
      ),
      overline: TextStyle(
        color: Colors.grey,
      ),
      caption: TextStyle(
        color: Colors.grey,
      ),
    ),
  ),
};

MaterialColor mycolor = const MaterialColor(
  0xFF558B2F,
  <int, Color>{
    50: const Color(0xffce5641), //10%
    100: const Color(0xffb74c3a), //20%
    200: const Color(0xffa04332), //30%
    300: const Color(0xff89392b), //40%
    400: const Color(0xff733024), //50%
    500: const Color(0xff5c261d), //60%
    600: const Color(0xff451c16), //70%
    700: const Color(0xff2e130e), //80%
    800: const Color(0xff170907), //90%
    900: const Color(0xff000000), //100%
  },
);
