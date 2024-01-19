import 'package:flutter/material.dart';

class HasilKalkulatorScreen extends StatelessWidget {
  const HasilKalkulatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  height: 140,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.pinkAccent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Kebutuhan Kalori',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                      Text('32391 kkal',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                boxHasil(
                    context: context,
                    tipe: 'KARBOHIDRAT',
                    image: 'assets/images/kalkulator_karbo.png',
                    hasil: '300',
                    warna: Colors.lightBlue
                ),
                boxHasil(
                    context: context,
                    tipe: 'KARBOHIDRAT',
                    image: 'assets/images/kalkulator_lemak.png',
                    hasil: '300',
                    warna: Colors.redAccent
                ),
                boxHasil(
                    context: context,
                    tipe: 'PROTEIN',
                    image: 'assets/images/kalkulator_protein.png',
                    hasil: '300',
                    warna: Colors.amber
                )
              ]))),
    );
  }

  Container boxHasil({
      BuildContext? context,
      String? tipe,
      String? image,
      String? hasil,
      Color? warna})
  {
    return Container(
                width: MediaQuery.sizeOf(context!).width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(20),
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                        offset: Offset(
                          1.0, // horizontal, move right 10
                          4.0, // vertical, move down 10
                        ),
                      ),
                    ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(image!),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(tipe!,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: warna)),
                        const SizedBox(height: 5,),
                        Text(
                          '$hasil gram',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: warna, fontWeight: FontWeight.w800),
                        )
                      ],
                    )),
                  ],
                ),
              );
  }
}
