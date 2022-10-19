import 'package:equatable/equatable.dart';

class WeatherResponse extends Equatable {
  final List<WeatherDescription> weatherDescription;
  final MainWeatherResponse mainWeatherResponse;
  final String location;

  const WeatherResponse({
    required this.weatherDescription,
    required this.mainWeatherResponse,
    required this.location,
  });

  @override
  List<Object?> get props => [
        weatherDescription,
        mainWeatherResponse,
        location,
      ];
}

class WeatherDescription extends Equatable {
  final String simpleDescription;
  final String fullDescription;

  const WeatherDescription({
    required this.simpleDescription,
    required this.fullDescription,
  });

  @override
  List get props => [
        simpleDescription,
        fullDescription,
      ];
}

class MainWeatherResponse extends Equatable {
  final double temperatureNow;
  final double thermalSensation;
  final double maxTemperature;
  final double minTemperature;
  final int pressure;
  final int humidity;

  const MainWeatherResponse({
    required this.temperatureNow,
    required this.thermalSensation,
    required this.maxTemperature,
    required this.minTemperature,
    required this.pressure,
    required this.humidity,
  });

  @override
  List get props => [
        temperatureNow,
        thermalSensation,
        maxTemperature,
        minTemperature,
        pressure,
        humidity,
      ];
}
