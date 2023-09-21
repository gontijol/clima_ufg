// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:clima_ufg/pages/home/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiRest extends GetxController {
  final apiKey = dotenv.env['API_KEY']!;
  final apiUrl = 'https://api.weatherapi.com/v1/current.json?q=';

  Future<WeatherModel> getWeatherData(String cityName) async {
    final response = await http.get(
      Uri.parse('$apiUrl$cityName&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final WeatherModel weatherData = WeatherModel.fromJson(data);
      print(response.statusCode);
      print(response.body);
      return weatherData;
    } else {
      print(response.statusCode);
      throw Exception('Algo de errado não está certo');
    }
  }
}
