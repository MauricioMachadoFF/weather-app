import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_response_model.g.dart';

@JsonSerializable(createToJson: false)
class WeatherResponseModel {
  @JsonKey(name: 'weather')
  final List<WeatherDescriptionModel> weatherDescription;
  final MainWeatherResponseModel main;
  @JsonKey(name: 'name')
  final String location;

  WeatherResponseModel({
    required this.weatherDescription,
    required this.main,
    required this.location,
  });

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class WeatherDescriptionModel {
  @JsonKey(name: 'main')
  final String simpleDescription;
  final String description;

  WeatherDescriptionModel({
    required this.simpleDescription,
    required this.description,
  });

  factory WeatherDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescriptionModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class MainWeatherResponseModel {
  @JsonKey(name: 'temp')
  final double temperature;
  @JsonKey(name: 'feels_like')
  final double thermalSensation;
  @JsonKey(name: 'temp_max')
  final double maxTemperature;
  @JsonKey(name: 'temp_min')
  final double minTemperature;
  final int pressure;
  final int humidity;

  MainWeatherResponseModel({
    required this.temperature,
    required this.thermalSensation,
    required this.maxTemperature,
    required this.minTemperature,
    required this.pressure,
    required this.humidity,
  });

  factory MainWeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherResponseModelFromJson(json);
}
