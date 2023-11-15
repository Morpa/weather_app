import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'blocs/wheather/weather_bloc.dart';
import 'screens/home_screen.dart';
import 'utils/app_utils.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: FutureBuilder(
        future: AppUtils.determinePosition(),
        builder: (_, snap) {
          if (snap.hasData) {
            return BlocProvider(
              create: (_) =>
                  WeatherBloc()..add(FetchWeather(snap.data as Position)),
              child: FadeInUp(
                duration: const Duration(milliseconds: 800),
                delay: const Duration(milliseconds: 500),
                child: const HomeScreen(),
              ),
            );
          } else {
            return Scaffold(
              body: Container(
                color: Colors.black,
                child: FadeIn(
                  duration: const Duration(milliseconds: 500),
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
