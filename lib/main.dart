import 'package:flutter/material.dart';
import 'package:rewards_app/screens/homepage.dart';
import 'package:rewards_app/screens/splash_screen.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Spar Rewards Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
