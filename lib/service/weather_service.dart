import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_application/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  Future<WeatherModel> FetchWeatherDate({required String city}) async {
    final dio = Dio();

    final String baseurl = 'http://api.weatherapi.com/v1';
    final String apikey = '691b705741dd4e5392f105346261202';

    try {
      final response = await dio.get(
        '$baseurl/forecast.json?key=$apikey&q=$city&days=2&aqi=no&alerts=no',
      );
      WeatherModel model = WeatherModel.fromjson(response.data);

      return model;
    } on DioException catch (e) {
      final String message =
          e.response?.data['error']['message'] ??
          'Oops! There seems to be a problem. Please try again.';
      throw Exception(message);
    } on Exception catch (e) {
      throw Exception('Oops! There seems to be a problem. Please try again.');
    }
  }
}
