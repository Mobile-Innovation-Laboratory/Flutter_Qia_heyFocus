import 'package:get/get.dart';
import 'dart:async';

class BreakController extends GetxController {
  RxInt timeLeft = (5 * 60).obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startBreakTimer();
  }

  void startBreakTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft.value > 0) {
        timeLeft.value--;
      } else {
        timer.cancel();
        Get.offAllNamed('/home');
      }
    });
  }

  void skipBreak() {
    _timer?.cancel();
    Get.offAllNamed('/home');
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
