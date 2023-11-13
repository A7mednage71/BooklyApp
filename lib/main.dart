import 'package:bookly/constants.dart';
import 'package:bookly/features/Splash/Presentation/Views/Splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: KPrimarycolor,
      ),
      home: const SplashView(),
    );
  }
}
