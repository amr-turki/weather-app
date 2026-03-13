import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_status.dart';
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
      child: Builder(
        builder: (context) =>BlocBuilder<GetWeatherCubit,WeatherStatus>(
        builder: (context, State) => MaterialApp(
          theme: ThemeData(
            primarySwatch: getThemeColor(
              BlocProvider.of<GetWeatherCubit>(context).model?.statusWeather,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    ));
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) return Colors.blue;

  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;

    case 'Partly cloudy':
      return Colors.blueGrey;

    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;

    case 'Patchy rain possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Light rain shower':
      return Colors.lightBlue;

    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return Colors.blue;

    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Light snow':
    case 'Patchy light snow':
    case 'Moderate snow':
    case 'Patchy moderate snow':
    case 'Heavy snow':
    case 'Patchy heavy snow':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Ice pellets':
      return Colors.indigo;

    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;

    default:
      return Colors.blue;
  }
}
