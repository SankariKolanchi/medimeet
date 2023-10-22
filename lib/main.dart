import 'package:flutter/material.dart';

import 'view/screens/splash_screen.dart';
import 'view/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDI MEET',
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
