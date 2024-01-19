import 'package:anemiapp/screen/cek_gejala.dart';
import 'package:anemiapp/screen/dashboard.dart';
import 'package:anemiapp/screen/info.dart';
import 'package:anemiapp/screen/kalkulator_nutrisi.dart';
import 'package:anemiapp/screen/pengingat.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ScaffoldMain extends StatefulWidget {
  const ScaffoldMain({super.key});

  @override
  State<ScaffoldMain> createState() => _ScaffoldMainState();
}

class _ScaffoldMainState extends State<ScaffoldMain> {
  int selectedIndex = 2;

  List<Widget> screen = [
    const CekGejalaScreen(),
    const PengingatScreen(),
    const DashboardScreen(),
    const KalkulatorScreen(),
    const InfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) => setState(() => selectedIndex = index),
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Symbols.stethoscope),
              selectedIcon: Icon(Symbols.stethoscope, fill: 1,),
              label: "Cek Gejala"
          ),
          NavigationDestination(
              icon: Icon(Symbols.calendar_today),
              selectedIcon: Icon(Symbols.calendar_today, fill: 1,),
              label: "Pengingat"
          ),
          NavigationDestination(
              icon: Icon(Symbols.home_rounded),
              selectedIcon: Icon(Symbols.home_rounded, fill: 1,),
              label: "Beranda"
          ),
          NavigationDestination(
              icon: Icon(Symbols.calculate_rounded),
              selectedIcon: Icon(Symbols.calculate_rounded, fill: 1,),
              label: "Kalkulator"
          ),
          NavigationDestination(
              icon: Icon(Symbols.lab_profile_rounded),
              selectedIcon: Icon(Symbols.lab_profile_rounded, fill: 1,),
              label: "Info"
          ),
        ],
      ),
    ));
  }
}