import 'package:app/src/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/controllers/settings.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AppStateManager()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppStateManager? appStateManager;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    appStateManager = Provider.of<AppStateManager>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRIMERA MFB',
      theme: appStateManager!.themeData,
      home: const SettingScreenScreen(),
    );
  }
}
