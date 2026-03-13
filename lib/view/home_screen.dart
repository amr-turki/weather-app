import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_application/cubit/get_weather_cubit/get_weather_status.dart';
import 'package:weather_application/main.dart';
import 'package:weather_application/model/weather_model.dart';
import 'package:weather_application/view/search_screen.dart';
import 'package:weather_application/widget/no_weather_body.dart';
import 'package:weather_application/widget/weather_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).model;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: getThemeColor(weatherModel?.statusWeather),
        title: Text(
          'Weather App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search, size: 24),
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStatus>(
        builder: (context, state) {
          if (state is LoadedWeather) {
            return WeatherBody(model: state.model);
          } else if (state is Noweather) {
            return NoWeatherBody();
          } else {
            return Center(
              child: Text(
                'Oops! There seems to be a problem. Please try again.',
              ),
            );
          }
        },
      ),
    );
  }
}
