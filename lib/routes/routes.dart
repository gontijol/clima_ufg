import 'package:clima_ufg/pages/home/binding.dart';
import 'package:clima_ufg/pages/home/page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      transition: Transition.fade,
      binding: HomeBinding(),
    ),
  ];
}
