import 'package:anemiapp/login.dart';
import 'package:anemiapp/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnemiApp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pinkAccent
        )
      ),
      home: const SafeArea(child: RegisterScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}