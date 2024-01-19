import 'package:anemiapp/screen/login.dart';
import 'package:anemiapp/services/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Map<String, dynamic> errors = {};

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text('Buat Akun',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w700
                              ),
                            )
                        )),
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Nama'),
                          errorText: errors.containsKey('name') ? errors['name'][0] : null
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('E-mail'),
                        errorText: errors.containsKey('email') ? errors['email'][0] : null
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10
                        ),
                        label: Text('Password'),
                          errorText: errors.containsKey('password') ? errors['password'][0] : null
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
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
                    const SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FilledButton(
                        onPressed: () async {
                          Map<String, dynamic> data = {
                            'name': _nameController.text,
                            'email': _emailController.text,
                            'password': _passwordController.text,
                          };

                          var res = await register(data);

                          if(res['status'] == 201) {
                            print('Berhasil');
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //   builder: (context) => const LoginScreen(),
                            //   )
                            // );
                          } else {
                            setState(() {
                              errors = res['errors'];
                              print(errors);
                            });
                          }
                        },
                        child: const Text('Daftar'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                              )
                            );
                        },
                        child: RichText(
                          text: TextSpan(
                              text: 'Sudah punya Akun? ',
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
    ));
  }
}