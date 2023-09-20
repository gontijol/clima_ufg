import 'package:get/get.dart';

class HomeController extends GetxController {
  final temp = 30.0.obs;
  final menuIndex = 1.obs;

  @override
  void onInit() {
    temp.value = 30.0;
    menuIndex.value = 1;
    super.onInit();
  }

  changeIndex(index) => menuIndex.value = index;
}
