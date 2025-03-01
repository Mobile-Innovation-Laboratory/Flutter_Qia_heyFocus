import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:hoy_focus/app/modules/timer/controllers/timer_controller.dart';

class FailedView extends StatelessWidget {
  const FailedView({super.key});

  @override
  Widget build(BuildContext context) {
    final TimerController timerController = Get.find<TimerController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/ghost2_animation.json',
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              "Oh no, your pet is dead",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 270),
            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  timerController.resetTimer();
                  Get.offAllNamed('/home');
                },
                child: const Text(
                  "Back to home",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
