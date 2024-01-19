import 'package:flutter/material.dart';

class HasilGejalaScreen extends StatelessWidget {
  const HasilGejalaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.pinkAccent.shade400,
          body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'HASIL',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Text(
                'CEK GEJALA',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              tampilHasil(context: context, hasil: true ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 40,
                child: ElevatedButton(
                  child: const Text('SELESAI'),
                  onPressed: () {},
                ),
              )
            ],
          )),
    ));
  }

  Container tampilHasil({BuildContext? context, bool? hasil}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Text(
            'Gejala yang kamu alami adalah',
            style: Theme.of(context!).textTheme.bodyMedium,
          ),
          Text(
            hasil! ? 'GEJALA ANEMIA' : 'BUKAN GEJALA ANEMIA',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600, color: Colors.pinkAccent.shade400),
          ),
          Image.asset(hasil
              ? 'assets/images/hasil_gejala_iya.png'
              : 'assets/images/hasil_gejala_tidak.png',
          ),
          Text(
            'Segera konsultasi dengan tenaga medis untuk mendapat penanganan lebih lanjut.',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          Text(
            'Dapatkan informasi seputar anemia, nutrisi, dan pola hidup sehat di Info Sehat',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
