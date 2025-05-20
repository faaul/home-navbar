import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navbar/bindings/main_binding.dart';
import '../modules/navbar/views/navbar_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.navbar;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.navbar,
      page: () => const NavbarView(),
      binding: MainBinding(),
    ),
  ];
}
