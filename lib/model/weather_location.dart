import 'package:flutter/cupertino.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconURL;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation(
      {@required this.city,
      @required this.dateTime,
      @required this.temperature,
      @required this.weatherType,
      @required this.iconURL,
      @required this.wind,
      @required this.rain,
      @required this.humidity});
}

final locationList = [
  WeatherLocation(
      city: "pitapuram",
      dateTime: "07:50 pm -Monday, 9 Nov 2021",
      temperature: "24",
      weatherType: "Night",
      iconURL: "assets/moon.png",
      wind: 8,
      rain: 7,
      humidity: 82),
  WeatherLocation(
      city: "pitapuram",
      dateTime: "07:50 pm -Monday, 9 Nov 2021",
      temperature: "24\u2103",
      weatherType: "Night",
      iconURL: "assets/moon.png",
      wind: 8,
      rain: 7,
      humidity: 82),
  WeatherLocation(
      city: "pitapuram",
      dateTime: "07:50 pm -Monday, 9 Nov 2021",
      temperature: "24\u2103",
      weatherType: "Night",
      iconURL: "assets/moon.png",
      wind: 8,
      rain: 7,
      humidity: 82),
];
