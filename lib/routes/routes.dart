import 'package:clima_ufg/pages/home/binding.dart';
import 'package:clima_ufg/pages/home/page.dart';
import 'package:clima_ufg/pages/selected_city/page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      transition: Transition.fade,
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/selected_city',
      page: () => const SelectedCity(),
      transition: Transition.fade,
    )
  ];
}
