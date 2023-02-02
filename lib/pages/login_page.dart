import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/login_img.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10.0), //Alternative for padding
          const Text(
            'Welcome',
            style: TextStyle(fontSize: 25),
            // style: GoogleFonts.sourceSansPro(
            //   textStyle: const TextStyle(
            //     fontSize: 22,
            //     fontWeight: FontWeight.w500,
            //   ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter your username',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Login')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
