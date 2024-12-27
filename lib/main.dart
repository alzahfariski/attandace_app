import 'package:attandance_app/apps/modules/auth/pages/welcome_page.dart';
import 'package:attandance_app/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Attandace App',
      themeMode: ThemeMode.light,
      theme: AAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}


