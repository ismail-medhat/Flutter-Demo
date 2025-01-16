import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/cubit/weather_cubit/weather_cubit.dart';
import 'package:flutter_demo/services/weather_service.dart';
import 'package:flutter_demo/pages/home_page.dart';

void main() {
  runApp(BlocProvider(
      create: (context) {
        return WeatherCubit(WeatherService());
      },
      child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:
            BlocProvider.of<WeatherCubit>(context).weatherModal == null
                ? Colors.blue
                : BlocProvider.of<WeatherCubit>(context)
                    .weatherModal!
                    .getThemeColor(),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
