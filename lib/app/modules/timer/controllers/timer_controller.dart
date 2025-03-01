import 'package:get/get.dart';
import 'dart:async';

class TimerController extends GetxController {
  RxInt timeLeft = (1 * 60).obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft.value > 0) {
        timeLeft.value--;
      } else {
        timer.cancel();
        Get.toNamed('/congrats');
      }
    });
  }

  void resetTimer() {
    _timer?.cancel();
    timeLeft.value = 25 * 60;
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
