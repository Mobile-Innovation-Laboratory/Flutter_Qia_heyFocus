import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:hoy_focus/app/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/lottie/key_animation.json',
                height: 200,
                width: 265.9,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                letterSpacing: .5,
              ),
            ),
            const Text(
              "Ready to continue?",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF707070),
              ),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Email",
              prefixIcon: Icon(Icons.alternate_email_outlined),
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock_clock_outlined),
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF000000),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: "New here? Let’s get you ",
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "started!",
                    style: const TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/register');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
