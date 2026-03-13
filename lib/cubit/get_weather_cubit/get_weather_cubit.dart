import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_status.dart';
import 'package:weather_application/model/weather_model.dart';
import 'package:weather_application/service/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStatus> {
  GetWeatherCubit() : super(Noweather());
}
