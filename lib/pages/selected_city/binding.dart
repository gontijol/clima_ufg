import 'package:clima_ufg/pages/selected_city/controller.dart';
import 'package:get/get.dart';

class SelectedCityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedCityController());
  }
}
