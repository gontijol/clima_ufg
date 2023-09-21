// ignore_for_file: depend_on_referenced_packages

import 'package:clima_ufg/pages/home/models.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherApi extends GetxController {
  final apiKey = dotenv.env['API_KEY'];
  final apiUrl = 'https://api.weatherapi.com/v1/current.json?q=';

  Future<WeatherResponse> getWeatherData(String cityName) async {
    final response = await http.get(
      Uri.parse(
          'https://api.weatherapi.com/v1/current.json?q=$cityName&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      print(response.statusCode);
      final WeatherResponse weatherData = WeatherResponse.fromJson(json);
      return weatherData; // Correção aqui
    } else {
      print(response.statusCode);
      print(response.body);
      throw Exception('Failed to load weather data');
    }
  }
}
