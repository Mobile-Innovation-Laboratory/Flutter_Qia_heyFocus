import 'package:get/get.dart';
import 'package:hoy_focus/app/modules/home/views/home_view.dart';
import 'package:hoy_focus/app/modules/login/views/login_view.dart';
import 'package:hoy_focus/app/modules/register/views/register_view.dart';
import 'package:hoy_focus/app/modules/settings/views/setting_view.dart';
import 'package:hoy_focus/app/modules/account/views/account_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(name: _Paths.LOGIN, page: () => const LoginView()),
    GetPage(name: _Paths.REGISTER, page: () => const RegisterView()),
    GetPage(name: _Paths.HOME, page: () => HomeView()),
    GetPage(name: _Paths.SETTINGS, page: () => SettingView()),
    GetPage(name: _Paths.ACCOUNT, page: () => const AccountView()),
  ];
}
