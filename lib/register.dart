import 'package:anemiapp/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: 20
        ),
        child: Column(
            children: [
              Column(
                  children: [
                    Image.asset('assets/logo/logo.png', height: 80),
                    RichText(
                      text: TextSpan(
                        text: 'Anemi',
                        children: [
                          TextSpan(text: 'App', style: TextStyle(color: Colors.grey.shade700))
                        ],
                        style: GoogleFonts.jomhuria(
                            textStyle: Theme.of(context).textTheme.displayMedium,
                            color: Colors.pinkAccent
                        ),
                      ),
                    )
                  ]
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 10.2,
                        offset: const Offset(0, 4),
                      )
                    ]
                ),
                child: Column(
                  children: [
                    (
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text('Buat Akun',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w700
                              ),
                            )
                        )),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('E-mail'),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Password'),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Konfirmasi Password'),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FilledButton(
                        onPressed: () {  },
                        child: Text('Daftar'),
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SafeArea(child: LoginScreen()),
                              )
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                              text: 'Sudah punya Akun ? ',
                              children: const [
                                TextSpan(text: 'Masuk Sekarang',
                                    style: TextStyle(color: Colors.pinkAccent)
                                )
                              ],
                              style: Theme.of(context).textTheme.bodySmall
                          ),
                        )
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}