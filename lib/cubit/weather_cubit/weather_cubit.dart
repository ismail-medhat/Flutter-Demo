import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/cubit/weather_cubit/weather_state.dart';
import 'package:flutter_demo/models/weather_model.dart';
import 'package:flutter_demo/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.waetherService) : super(WeatherInitial());

// Intialize object from weather service
  WeatherService waetherService;
// Intialize object from weather model
  WeatherModel? weatherModal;

  String? cityName;

  void getWeather({required String cityName}) async {
    cityName = cityName;
    emit(WeatherLoading());
    try {
      weatherModal = await waetherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weathermodel: weatherModal!));
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
