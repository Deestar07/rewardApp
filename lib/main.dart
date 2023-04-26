import 'package:flutter/material.dart';
import 'package:rewards_app/screens/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Spar Rewards Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
