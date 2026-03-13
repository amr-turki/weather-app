import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_status.dart';
import 'package:weather_application/model/weather_model.dart';
import 'package:weather_application/service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStatus> {
  GetWeatherCubit() : super(Noweather());

   WeatherModel? model;
  getWeather({required String city}) async {
    try {
      model = await WeatherService(Dio()).FetchWeatherDate(city: city);

      emit(LoadedWeather(model!));
    } catch (e) {
      emit(FailureWeather(e.toString()));
    }
  }
}
