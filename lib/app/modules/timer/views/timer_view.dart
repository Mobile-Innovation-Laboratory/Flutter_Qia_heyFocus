import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/timer_controller.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    final TimerController controller = Get.put(TimerController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'assets/lottie/walk_animation.json',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Obx(() {
              int minutes = controller.timeLeft.value ~/ 60;
              int seconds = controller.timeLeft.value % 60;

              String formattedTime =
                  "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";

              return Text(
                formattedTime,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                "Stay focused and be productive! Interrupting focus will cause its death",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(height: 200),
          GestureDetector(
            onLongPress: () {
              Get.toNamed('/failed');
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Hold to Quit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
