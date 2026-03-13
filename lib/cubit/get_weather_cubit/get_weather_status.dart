import 'package:weather_application/model/weather_model.dart';

class WeatherStatus {}

class Noweather extends WeatherStatus {}

class LoadedWeather extends WeatherStatus {
  final WeatherModel model;
  LoadedWeather(this.model);
}

class FailureWeather extends WeatherStatus {
  final String message;
  FailureWeather(this.message);
}
