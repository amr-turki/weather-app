import 'package:flutter/material.dart';
import 'package:weather_application/model/weather_model.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({Key? key, required this.model}) : super(key: key);

  final WeatherModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.City,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            'Updated at ${model.Date..hour}:${model.Date.minute}',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(model.image!),
              Text(
                model.Temp.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Column(
                children: [
                  Text(
                    'Min Temp is ${model.maxTemp.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Max Temp is ${model.minTemp.round()}',
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
    );
  }
}
