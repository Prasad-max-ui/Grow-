import 'package:flutter/material.dart';
import 'screens/splash.dart';  // 👈 your first screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the red debug banner
      title: 'Growकृषक',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(), // 👈 app starts with Splash
    );
  }
}
