import 'package:flutter/material.dart';
import 'package:guessnumber/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 1, 24, 31)),
    home: const HomeScreen(),
    );
  }
}
