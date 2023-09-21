import 'package:clima_ufg/api/api_rest.dart';
import 'package:clima_ufg/pages/home/models.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final gynTemp = 30.0.obs;
  final menuIndex = 1.obs;
  final WeatherApi weatherApi = WeatherApi();

  @override
  void onInit() {
    menuIndex.value = 1;
    super.onInit();
    fetchWeatherData('goiania');
  }

  void fetchWeatherData(String cityName) async {
    try {
      final WeatherResponse weatherData =
          await weatherApi.getWeatherData(cityName);
      gynTemp.value = weatherData.current.tempC;
    } catch (e) {
      print('Erro ao buscar dados meteorológicos: $e');
    }
  }

  changeIndex(index) => menuIndex.value = index;
}
