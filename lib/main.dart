import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_application/view/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GetWeatherCubit();
      },
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
