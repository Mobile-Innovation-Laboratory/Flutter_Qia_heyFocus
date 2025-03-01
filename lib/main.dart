import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoy_focus/app/modules/login/views/login_view.dart';
import 'package:hoy_focus/app/modules/register/views/register_view.dart';
import 'package:hoy_focus/app/modules/home/views/home_view.dart';
import 'package:hoy_focus/app/modules/timer/views/timer_view.dart';
import 'package:hoy_focus/app/modules/failed/views/failed_view.dart';
import 'package:hoy_focus/app/modules/break/views/break_view.dart';
import 'package:hoy_focus/app/modules/settings/views/setting_view.dart';
import 'package:hoy_focus/app/modules/account/views/account_view.dart';
import 'package:hoy_focus/app/modules/congrats/views/congrats_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoy Focus',
      initialRoute: '/register',
      getPages: [
        GetPage(name: '/login', page: () => const LoginView()),
        GetPage(name: '/register', page: () => const RegisterView()),
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/timer', page: () => TimerView()),
        GetPage(name: '/failed', page: () => FailedView()),
        GetPage(name: '/break', page: () => BreakView()),
        GetPage(name: '/settings', page: () => const SettingView()),
        GetPage(name: '/account', page: () => const AccountView()),
        GetPage(name: '/congrats', page: () => const CongratsView()),
      ],
    );
  }
}
