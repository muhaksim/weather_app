class Weather {
  final String cityName;
  final double temp;
  final int humidity;
  final String description;
  final double windspeed;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.humidity,
      required this.description,
      required this.windspeed});

  factory Weather.fromJson(Map<dynamic, dynamic> json) {
    return Weather(
        cityName: json["name"],
        temp: json["main"]["temp"],
        humidity: json["main"]["humidity"],
        description: json["weather"][0]["description"],
        windspeed: json["wind"]["speed"]);
  }
}
