import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({ super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  List<String> gender = [
    'Laki - laki',
    'Perempuan'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.sizeOf(context).width,
                color: Colors.pinkAccent.shade700,
                height: 100,
                child: Text('Kalkulator Nutrisi',
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
              ),],),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Yuk, hitung berapa kalori dan nutrisi yang dibutuhkan oleh tubuhmu!',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15,),
                    DropdownMenu(
                      width: MediaQuery.sizeOf(context).width - 40,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: 'laki', label: 'Laki - laki'),
                        DropdownMenuEntry(value: 'perempuan', label: 'Perempuan')
                      ],
                      enableFilter: true,
                      enableSearch: true,
                      label: const Text('Jenis Kelamin'),
                      inputDecorationTheme: const InputDecorationTheme(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        isDense: true

                      ),
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Usia'),
                        suffixText: 'Tahun'
                      )
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Berat Badan'),
                        suffixText: 'kg'
                      )
                    ),
                    const SizedBox(height: 15,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Tinggi Badan'),
                        suffixText: 'cm'
                      )
                    ),
                    const SizedBox(height: 15,),
                    DropdownMenu(
                      width: MediaQuery.sizeOf(context).width - 40,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: 'laki', label: 'Laki - laki'),
                        DropdownMenuEntry(value: 'perempuan', label: 'Perempuan')
                      ],
                      enableFilter: true,
                      enableSearch: true,
                      label: const Text('Tingkat Aktifitas Fisik'),
                      inputDecorationTheme: const InputDecorationTheme(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10
                          ),
                          isDense: true

                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: FilledButton(
                        child: Text('Hitung', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                        onPressed: () {

                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
    );
  }
}