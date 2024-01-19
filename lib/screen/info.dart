import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

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
                    child: Text('Info Sehat',
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
                    // Wrap Container
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 230, 230, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: (MediaQuery.sizeOf(context).width * 1 / 2) - 50,
                            child: Image.asset('assets/images/info-1.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Penyebab, Gejala, dan Cara Mencegah Anemia',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 20,),
                                  FilledButton(
                                      onPressed: () {},
                                      child: Text('Selengkapnya',
                                      )
                                  )
                                ]
                            ),
                          ),
                        ],
                      )
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }

}