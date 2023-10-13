import 'package:clima_ufg/api/api_rest.dart';
import 'package:clima_ufg/pages/home/models.dart';
import 'package:get/get.dart';

class SelectedCityController extends GetxController {
  final humidity = 0.obs;
  final uvIndex = 0.0.obs;
  final feelsLike = 0.0.obs;
  final tempC = 30.0.obs;
  final city = 'Goiania'.obs;

  final preciptation = 0.obs;
  final ApiRest apiRest = ApiRest();

  @override
  void onInit() async {
    // TODO: implement onInit
    await fetchWeatherData(city.value);
    super.onInit();
  }

  fetchWeatherData(String cityName) async {
    try {
      final WeatherModel weatherData = await apiRest.getWeatherData(cityName);
      final current = weatherData.current;
      humidity.value = current.humidity.toInt();
      uvIndex.value = current.uv;
      preciptation.value = current.precipMm.toInt();
      feelsLike.value = current.feelslikeC;
      tempC.value = current.tempC;
      city.value = weatherData.location.name;
      print('temperatura atual ${current.tempC}');
    } catch (e) {
      print('Erro ao buscar os dados $e');
    }
  }
}
