import 'package:anemiapp/screen/login.dart';
import 'package:anemiapp/screen/register.dart';
import 'package:anemiapp/screen/survey.dart';
import 'package:anemiapp/widget/main_scaffold.dart';
import 'package:flutter/material.dart';

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
      home: const SurveyScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}