import 'package:flutter_demo/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  WeatherModel weathermodel;
  WeatherSuccess({required this.weathermodel});
}

class WeatherFailure extends WeatherState {}
