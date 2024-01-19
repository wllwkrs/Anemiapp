import 'package:anemiapp/screen/hasil_gejala.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CekGejalaScreen extends StatelessWidget {
  const CekGejalaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.pinkAccent.shade700,
                  height: 100,
                  child: Text('Cek Gejala',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Positioned(
                  bottom: -80,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Apakah saat ini kamu sering merasa sering lelah dan sakit kepala?',
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                  SizedBox(height:20),
                  Text('Yuk, cek gejala yang kamu alami!',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Image.asset('assets/images/gejala_anemia.png', )
                ],
              ),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          label: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cek Gejala'),
              Icon(Symbols.keyboard_double_arrow_right_rounded)
            ],
          ),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => const HasilGejalaScreen()
              )
            );
          },
      ),
    );
  }
}