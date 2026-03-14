import 'package:flutter/material.dart';
import 'package:weather_application/main.dart';
import 'package:weather_application/model/weather_model.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({Key? key, required this.model}) : super(key: key);

  final WeatherModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getThemeColor(model.statusWeather),
            getThemeColor(model.statusWeather)[500]!,
            getThemeColor(model.statusWeather)[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              model.City,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              'Updated at ${model.Date.hour}:${model.Date.minute}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${model.image!}"),
                Text(
                  model.Temp.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Column(
                  children: [
                    Text(
                      'Min Temp is ${model.minTemp.round()}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Max Temp is ${model.maxTemp.round()}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              '${model.statusWeather}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
