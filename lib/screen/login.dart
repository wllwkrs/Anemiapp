import 'package:anemiapp/screen/dashboard.dart';
import 'package:anemiapp/screen/register.dart';
import 'package:anemiapp/services/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Map<String, dynamic> errors = {};

  bool isObsecure = true;

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
                      child: Text('Masuk Akun',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w700
                        ),
                      )
                  )),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                      ),
                      label: const Text('E-mail'),
                      errorText: errors.containsKey('email') ? errors['email'][0] : null
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                      ),
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(
                          isObsecure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        ),
                      ),
                      errorText: errors.containsKey('password') ? errors['password'][0] : null
                    ),
                    obscureText: isObsecure,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FilledButton(
                      onPressed: () async {
                        Map<String, dynamic> data = {
                          'email': _emailController.text,
                          'password': _passwordController.text,
                        };

                        var res = await login(data);

                        if(res['status'] == 201) {
                          if(!context.mounted) return;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => const DashboardScreen(),
                            )
                          );
                        } else {
                          setState(() {
                            errors = res['errors'];
                          });
                        }
                      },
                      child: const Text('Masuk'),
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SafeArea(child:RegisterScreen()),
                          )
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Belum punya Akun ? ',
                          children: const [
                            TextSpan(text: 'Daftar Sekarang',
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