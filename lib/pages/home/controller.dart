import 'package:get/get.dart';

class HomeController extends GetxController {
  final temp = 30.0.obs;

  @override
  void onInit() {
    temp.value = 30.0;
    super.onInit();
  }
}
