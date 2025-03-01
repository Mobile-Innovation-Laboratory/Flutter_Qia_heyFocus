import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:lottie/lottie.dart';
import 'package:hoy_focus/app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
            const SizedBox(height: 10),
            const Text(
              "Register",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: .5,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "One step closer to your goals. Let’s get started!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
                letterSpacing: .5,
              ),
            ),
            const SizedBox(height: 15),
            const CustomTextField(
              hintText: "Email",
              prefixIcon: Icon(Icons.alternate_email_outlined),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock_clock_outlined),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Confirm Password",
              prefixIcon: Icon(Icons.lock_clock_outlined),
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF000000),
              ),
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: "Got an account? Let’s get you back in! ",
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Login",
                    style: const TextStyle(
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed('/login');
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
