import 'package:get/route_manager.dart';

import '../modules/login/login_page.dart';
import '../modules/login/login_binding.dart';
import '../modules/register/register_page.dart';
import '../modules/register/register_binding.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}