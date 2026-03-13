class WeatherModel {
  final String City;
  final DateTime Date;
  final String? image;

  final String Temp;
  final double minTemp;
  final double maxTemp;
  final String statusWeather;

  const WeatherModel({
    required this.City,
    required this.Date,
    required this.Temp,
    required this.image,
    required this.maxTemp,
    required this.minTemp,
    required this.statusWeather,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      City: json['location']['name'],
      Date: DateTime.parse(json['current']['last_updated']),
      Temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      statusWeather:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
