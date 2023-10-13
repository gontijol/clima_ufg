import 'package:clima_ufg/api/api_rest.dart';
import 'package:clima_ufg/pages/home/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../selected_city/controller.dart';

class HomeController extends GetxController {
  final temp = 0.0.obs;
  final menuIndex = 1.obs;

  final ApiRest apiRest = ApiRest();
  final cityNameSearch = TextEditingController().obs;

  @override
  void onInit() async {
    menuIndex.value = 1;
    FlutterNativeSplash.remove();
    await fetchWeatherData('sao paulo');
    super.onInit();
  }

  fetchWeatherData(String cityName) async {
    try {
      final WeatherModel weatherData = await apiRest.getWeatherData(cityName);
      final current = weatherData.current;
      temp.value = current.tempC;
    } catch (e) {
      print('Erro ao buscar os dados $e');
    }
  }

  selectedCity() async {
    Get.lazyPut(() => SelectedCityController());
    Get.find<SelectedCityController>()
        .fetchWeatherData(cityNameSearch.value.text);
    Get.toNamed('/selected_city');
  }

  changeIndex(index) => menuIndex.value = index;
}
